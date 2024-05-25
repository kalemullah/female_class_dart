import 'dart:io';
import 'dart:math';

void main() {
  // int randomNumber = Random().nextInt(100);
  // print('Random number is: $randomNumber');

  ///// user number and
  print('Enter the number to get the sum of all number from 1 to n:');
  int usernumber = int.parse(stdin.readLineSync()!);
  int sum = 0;
  int i = 1;

  do {
    if (i % 2 == 0) {
      print('this  loop is going to break $i');
      break;
    }
    i++;
  } while (i <= usernumber);
  // print('this is sum of all number ' + sum.toString());

  ////
}
