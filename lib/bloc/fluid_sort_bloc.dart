import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';
import 'package:puzzled/models/fluid_sort.dart';

part 'fluid_sort_event.dart';
part 'fluid_sort_state.dart';

class FluidSortBloc extends Bloc<FluidSortEvent, FluidSortState> {
  FluidSortBloc() : super(FluidSortInitial(fluidSort: FluidSort.initial())) {
    on<FluidSortShuffled>((event, emit) {
      if (state is FluidSortInitial) {
        final s = state as FluidSortInitial;
        final shuffled = shuffle(s.fluidSort, 1);
        emit(FluidSortInitial(
          fluidSort: shuffled,
          selected: s.selected,
        ));
      }
    });

    on<FluidSortReset>((event, emit) {
      if (state is FluidSortInitial) {
        emit(FluidSortInitial(fluidSort: FluidSort.initial()));
      }
    });

    on<FluidSortBeakerSelected>((event, emit) {
      if (state is FluidSortInitial) {
        final s = state as FluidSortInitial;
        emit(FluidSortInitial(
          fluidSort: s.fluidSort,
          selected: event.selected,
        ));
      }
    });

    on<FluidSortBeakerDeselected>((event, emit) {
      if (state is FluidSortInitial) {
        final s = state as FluidSortInitial;
        emit(FluidSortInitial(fluidSort: s.fluidSort));
      }
    });
  }
}
