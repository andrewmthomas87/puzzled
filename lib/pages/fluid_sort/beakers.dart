import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puzzled/bloc/fluid_sort_bloc.dart';
import 'package:puzzled/models/fluid_sort.dart';
import 'package:puzzled/pages/fluid_sort/beaker.dart';

class Beakers extends StatelessWidget {
  final FluidSort fluidSort;

  const Beakers({Key? key, required this.fluidSort}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<FluidSortBloc, FluidSortState, int>(selector: (state) {
      if (state is FluidSortInitial) {
        return state.selected;
      }
      return -1;
    }, builder: (context, selected) {
      void onSelect(int index) {
        if (index == selected) {
          context.read<FluidSortBloc>().add(FluidSortBeakerDeselected());
        } else {
          context
              .read<FluidSortBloc>()
              .add(FluidSortBeakerSelected(selected: index));
        }
      }

      return Wrap(
        runSpacing: 20,
        spacing: 20,
        children: List<Widget>.generate(
          fluidSort.beakers.length,
          (index) {
            final isSelected = index == selected;

            return Beaker(
              beakerCapacity: fluidSort.beakerCapacity,
              beaker: fluidSort.beakers[index],
              isSelected: isSelected,
              onSelect: () => onSelect(index),
            );
          },
        ),
      );
    });
  }
}
