void main() {
  // Langkah 1
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // Langkah 3
  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.
  //
  // print(names1);
  // print(names2);
  // print(names3);


  // Langkah 3 - Adding Value
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  names1.add("Bahtiar Rifa'i");
  names1.add("2141720068");

  names2.addAll({"Bahtiar Rifa'i", "2141720068"});

  print(names1);
  print(names2);
}
