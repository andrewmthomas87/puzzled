import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';

const beakerColors = [
  Colors.amber,
  Colors.blue,
  Colors.brown,
  Colors.cyan,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.green,
  Colors.indigo,
  Colors.lightBlue,
  Colors.lightGreen,
  Colors.lime,
  Colors.orange,
  Colors.pink,
  Colors.purple,
  Colors.red,
  Colors.teal,
  Colors.yellow
];

class Beaker extends StatelessWidget {
  final int beakerCapacity;
  final BuiltList<int> beaker;
  final bool isSelected;
  final void Function()? onSelect;

  const Beaker({
    Key? key,
    required this.beakerCapacity,
    required this.beaker,
    this.isSelected = false,
    this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey[900]! : Colors.grey[600]!,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        padding: const EdgeInsets.only(
          bottom: 2,
          left: 2,
          right: 2,
        ),
        width: 50,
        height: 200,
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(6),
              bottomRight: Radius.circular(6),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: List<Widget>.generate(beakerCapacity, (index) {
              if (index < beaker.length) {
                return Expanded(
                  child: Container(
                    color: beakerColors[beaker[index]],
                  ),
                );
              } else {
                return Expanded(
                  child: Container(
                    color: Colors.grey[300],
                  ),
                );
              }
            }).reversed.toList(),
          ),
        ),
      ),
    );
  }
}
