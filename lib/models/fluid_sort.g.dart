// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fluid_sort.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FluidSort extends FluidSort {
  @override
  final int beakerCount;
  @override
  final int beakerCapacity;
  @override
  final BuiltList<BuiltList<int>> beakers;

  factory _$FluidSort([void Function(FluidSortBuilder)? updates]) =>
      (new FluidSortBuilder()..update(updates)).build();

  _$FluidSort._(
      {required this.beakerCount,
      required this.beakerCapacity,
      required this.beakers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        beakerCount, 'FluidSort', 'beakerCount');
    BuiltValueNullFieldError.checkNotNull(
        beakerCapacity, 'FluidSort', 'beakerCapacity');
    BuiltValueNullFieldError.checkNotNull(beakers, 'FluidSort', 'beakers');
  }

  @override
  FluidSort rebuild(void Function(FluidSortBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FluidSortBuilder toBuilder() => new FluidSortBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FluidSort &&
        beakerCount == other.beakerCount &&
        beakerCapacity == other.beakerCapacity &&
        beakers == other.beakers;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, beakerCount.hashCode), beakerCapacity.hashCode),
        beakers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FluidSort')
          ..add('beakerCount', beakerCount)
          ..add('beakerCapacity', beakerCapacity)
          ..add('beakers', beakers))
        .toString();
  }
}

class FluidSortBuilder implements Builder<FluidSort, FluidSortBuilder> {
  _$FluidSort? _$v;

  int? _beakerCount;
  int? get beakerCount => _$this._beakerCount;
  set beakerCount(int? beakerCount) => _$this._beakerCount = beakerCount;

  int? _beakerCapacity;
  int? get beakerCapacity => _$this._beakerCapacity;
  set beakerCapacity(int? beakerCapacity) =>
      _$this._beakerCapacity = beakerCapacity;

  ListBuilder<BuiltList<int>>? _beakers;
  ListBuilder<BuiltList<int>> get beakers =>
      _$this._beakers ??= new ListBuilder<BuiltList<int>>();
  set beakers(ListBuilder<BuiltList<int>>? beakers) =>
      _$this._beakers = beakers;

  FluidSortBuilder();

  FluidSortBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _beakerCount = $v.beakerCount;
      _beakerCapacity = $v.beakerCapacity;
      _beakers = $v.beakers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FluidSort other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FluidSort;
  }

  @override
  void update(void Function(FluidSortBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FluidSort build() {
    _$FluidSort _$result;
    try {
      _$result = _$v ??
          new _$FluidSort._(
              beakerCount: BuiltValueNullFieldError.checkNotNull(
                  beakerCount, 'FluidSort', 'beakerCount'),
              beakerCapacity: BuiltValueNullFieldError.checkNotNull(
                  beakerCapacity, 'FluidSort', 'beakerCapacity'),
              beakers: beakers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'beakers';
        beakers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FluidSort', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
