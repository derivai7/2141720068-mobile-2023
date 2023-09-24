void main() {
  // Langkah 1
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  // print(gifts);
  // print(nobleGases);

  // // Langkah 3
  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';

  // Langkah 3 - Adding Value
  gifts['name'] = 'Bahtiar Rifa\'i';
  gifts['nim'] = '2141720068';

  nobleGases[100] = 'Bahtiar Rifa\'i';
  nobleGases[101] = '2141720068';

  mhs1['name'] = 'Bahtiar Rifa\'i';
  mhs1['nim'] = '2141720068';

  mhs2[100] = 'Bahtiar Rifa\'i';
  mhs2[101] = '2141720068';

  print('Gifts: $gifts');
  print('NobleGases: $nobleGases');
  print('Mahasiswa 1: $mhs1');
  print('Mahasiswa 2: $mhs2');
}
