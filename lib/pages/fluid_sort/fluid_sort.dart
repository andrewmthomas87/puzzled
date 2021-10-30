import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puzzled/bloc/fluid_sort_bloc.dart';
import 'package:puzzled/models/fluid_sort.dart';
import 'package:puzzled/pages/fluid_sort/beakers.dart';

class FluidSortPage extends StatelessWidget {
  const FluidSortPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FluidSortBloc(),
      child: const Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: BlocSelector<FluidSortBloc, FluidSortState, FluidSort?>(
              selector: (state) =>
                  state is FluidSortInitial ? state.fluidSort : null,
              builder: (context, fluidSort) => fluidSort != null
                  ? Beakers(fluidSort: fluidSort)
                  : Container(),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () =>
                    context.read<FluidSortBloc>().add(FluidSortShuffled()),
                child: const Text('Shuffle'),
              ),
              TextButton(
                onPressed: () =>
                    context.read<FluidSortBloc>().add(FluidSortReset()),
                child: const Text('Reset'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
