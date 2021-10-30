part of 'fluid_sort_bloc.dart';

@immutable
abstract class FluidSortState {}

class FluidSortInitial extends FluidSortState {
  final FluidSort fluidSort;
  final int selected;

  FluidSortInitial({required this.fluidSort, this.selected = -1});

  BuiltList<int>? get selectedBeaker =>
      selected >= 0 ? fluidSort.beakers[selected] : null;
}
