part of 'fluid_sort_bloc.dart';

@immutable
abstract class FluidSortEvent {}

class FluidSortShuffled extends FluidSortEvent {}

class FluidSortReset extends FluidSortEvent {}

class FluidSortBeakerSelected extends FluidSortEvent {
  final int selected;

  FluidSortBeakerSelected({required this.selected});
}

class FluidSortBeakerDeselected extends FluidSortEvent {}
