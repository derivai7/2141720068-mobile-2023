void defaultValue({int number = 0}) {
  print("Number: $number");
}

void main() {
  defaultValue();
  defaultValue(number: 9);
}
// Result:
// Number: 0
// Number: 9