import 'package:flutter_test/flutter_test.dart';
import 'package:puzzled/models/fluid_sort.dart';

void main() {
  test('FluidSort generate', () {
    var fluidSort = FluidSort.initial();
    print(fluidSort);

    fluidSort = shuffle(fluidSort, 10);
    print(fluidSort);

    fluidSort = shuffle(fluidSort, 90);
    print(fluidSort);

    fluidSort = shuffle(fluidSort, 400);
    print(fluidSort);
  });
}
