// Langkah 3

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  // Langkah 1
  print('Langkah 1');

  var records = ('first', a: 2, b: true, 'last');
  print(records);

  // Langkah 3 - fixed
  print('Langkah 3');

  int a = 6;
  int b = 9;
  
  var record = (a, b);
  print('Before: $record');
  record = tukar(record);
  print('After: $record');

  // Langkah 4
  print('Langkah 4');

  // (String, int) mahasiswa;
  // print(mahasiswa);

  // Langkah 4 - fixed
  (String, int) mahasiswa;
  mahasiswa = ('Bahtiar Rifa\'i', 2141720068);
  print(mahasiswa);

  // Langkah 5
  print('Langkah 5');

  // var mahasiswa2 = ('first', a: 2, b: true, 'last');
  //
  // print(mahasiswa2.$1); // Prints 'first'
  // print(mahasiswa2.a); // Prints 2
  // print(mahasiswa2.b); // Prints true
  // print(mahasiswa2.$2); // Prints 'last'

  // Langkah 5 - fixed
  var mahasiswa2 = ('Bahtiar Rifa\'i', a: 2141720068, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'Bahtiar Rifa'i'
  print(mahasiswa2.a); // Prints 2141720068
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
