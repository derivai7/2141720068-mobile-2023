void main() {
  // Langkah 1
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);
  //
  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  // Langkah 3
  // final finalList = List.filled(5, null);
  // finalList[1] = "Bahtiar Rifa'i";
  // finalList[2] = "2141720068";
  //
  // print(finalList);

  // Langkah 3 - Fixed
  final list = List<String?>.filled(5, null);
  list[1] = "Bahtiar Rifa'i";
  list[2] = "2141720068";

  print(list);
}
