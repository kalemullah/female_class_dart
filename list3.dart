void main() {
  // List<String> Names = ['sapna', 'baji', 'Najeeba', 'fyp', 'css', 'DBMS'];

  // for (int i = 0; i < Names.length; i++) {
  //   print("${Names[i]}");
  // }
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int evenSum = 0;
  int oddSum = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      evenSum = evenSum + numbers[i];
      // print('this is even ${numbers[i]}');
    } else {
      oddSum = oddSum + numbers[i];
      // print('this is odd ${numbers[i]}');
    }
  }

  print('this is odd sum $oddSum and even sum $evenSum');
}
