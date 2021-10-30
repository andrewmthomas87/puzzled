import 'dart:math';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'fluid_sort.g.dart';

abstract class FluidSort implements Built<FluidSort, FluidSortBuilder> {
  int get beakerCount;
  int get beakerCapacity;
  BuiltList<BuiltList<int>> get beakers;

  BuiltList<int> get unfilledBeakerIndices =>
      List.generate(beakerCount, (index) => index)
          .where((index) => beakers[index].length < beakerCapacity)
          .toBuiltList();

  BuiltList<int> get nonEmptyBeakerIndices =>
      List.generate(beakerCount, (index) => index)
          .where((index) => beakers[index].isNotEmpty)
          .toBuiltList();

  FluidSort._() {
    if (beakers.length != beakerCount) {
      throw ArgumentError.value(beakers.length, 'beakers.length',
          'beakers.length must equal beakerCount');
    }
    final i = beakers.indexWhere((beaker) => beaker.length > beakerCapacity);
    if (i >= 0) {
      throw ArgumentError.value(beakers[i].length, 'beakers[$i].length', '');
    }
  }
  factory FluidSort([void Function(FluidSortBuilder) updates]) = _$FluidSort;

  factory FluidSort.initial({int beakerCount = 8, int beakerCapacity = 4}) =>
      FluidSort((b) {
        final start = FluidSort((b) => b
          ..beakerCount = beakerCount
          ..beakerCapacity = beakerCapacity
          ..beakers.addAll(List.generate(beakerCount - 2,
                  (index) => List.filled(beakerCapacity, index).toBuiltList()) +
              List.generate(2, (_) => List<int>.empty().toBuiltList())));

        b.replace(start);
      });
}

FluidSort shuffle(FluidSort initial, int iterations) {
  var current = initial;
  for (var i = 0; i < iterations; i++) {
    final random = Random();

    final tos = current.unfilledBeakerIndices;
    if (tos.isEmpty) {
      throw StateError('no to beaker');
    }
    final toIndex = tos[random.nextInt(tos.length)];
    final to = current.beakers[toIndex];

    final froms = current.nonEmptyBeakerIndices
        .where((index) => index != toIndex)
        .toBuiltList();
    if (froms.isEmpty) {
      throw StateError('no from beaker');
    }
    final fromIndex = froms[random.nextInt(froms.length)];
    final from = current.beakers[fromIndex];

    final value = from.last;

    current = current.rebuild((b) => b
      ..beakers[fromIndex] = from.take(from.length - 1).toBuiltList()
      ..beakers[toIndex] = to.followedBy([value]).toBuiltList());
  }
  return current;
}
