void sayHello(String firstName, [String? lastname]) {
  if (lastname != null) {
    print('Hello, $firstName $lastname');
  } else {
    print('Hello, $firstName');
  }
}

void main() {
  sayHello('Bahtiar');
  sayHello('Bahtiar', 'Rifa\'i');
}
// Result:
// Hello, Bahtiar
// Hello, Bahtiar Rifa'i