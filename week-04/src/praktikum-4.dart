void main() {
  // Langkah 1
  print('Langkah 1');

  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  // Langkah 3
  print('Langkah 3');

  // list1 = [1, 2, null];
  // print(list1);
  // var list3 = [0, ...?list1];
  // print(list3.length);

  // Langkah 3 - fixed
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...list1];
  print(list3.length);

  // Langkah 4
  print('Langkah 4');

  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print(nav);

  // Langkah 4 - fixed
  // PromoActive = true
  bool promoActive = true;
  print('Promo Active: $promoActive');
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // PromoActive = false
  bool promoActive2 = false;
  print('Promo Active: $promoActive2');
  var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive2) 'Outlet'];
  print(nav2);

  // Langkah 5
  print('Langkah 5');

  // var nav3 = [
  //   'Home',
  //   'Furniture',
  //   'Plants',
  //   if (login case 'Manager') 'Inventory'
  // ];
  // print(nav2);

  // Langkah 5 - fixed
  // Case True
  print('Case True');
  var login = 'Manager';
  var nav3 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav3);

  // Case False
  print('Case False');
  var nav4 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Staff') 'Inventory'
  ];
  print(nav4);

  // Langkah 6
  print('Langkah 6');

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['0', for (var i in listOfInts) '$i'];
  assert(listOfStrings[1] == '1');
  print(listOfStrings);
}
