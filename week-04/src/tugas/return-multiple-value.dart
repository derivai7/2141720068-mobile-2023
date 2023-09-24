import 'dart:math';

List<int> minMax(List<int> list) {
  return [list.reduce(min), list.reduce(max)];
}

void main() {
  var numbers = [1, 2, 3, 4, 5];
  var result = minMax(numbers);

  print('Min: ${result[0]}, Max: ${result[1]}');
}
// Result:
// Min: 1, Max: 5