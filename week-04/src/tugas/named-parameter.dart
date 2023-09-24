void sayHello({required String firstName, String? lastname}) {
  if (lastname != null) {
    print('Hello, $firstName $lastname');
  } else {
    print('Hello, $firstName');
  }
}

void main() {
  sayHello(firstName: 'Bahtiar');
  sayHello(lastname: 'Rifa\'i', firstName: 'Bahtiar');
}
// Result:
// Hello, Bahtiar
// Hello, Bahtiar Rifa'i