import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:puzzled/bloc_observer.dart';
import 'package:puzzled/pages/fluid_sort/fluid_sort.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'puzzled',
      home: FluidSortPage(),
    );
  }
}
