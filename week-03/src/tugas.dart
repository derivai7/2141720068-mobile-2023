void main() {
  for (int i = 2; i <= 201; i++) {
    bool isPrime = true;

    for (int j = 2; j <= i / 2; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print("${i} Bahtiar Rifa'i (2141720068)");
    }
  }
}