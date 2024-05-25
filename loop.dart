import 'dart:io';

void main() {
  /// table
  ///
  ///
  //task 6
  print('enter a number ');
  int number = int.parse(stdin.readLineSync()!);
  int sum = 0;

  for (int i = 0; i < number; i++) {
    int number2 = int.parse(stdin.readLineSync()!);
    sum = sum + number2;
  }
  print('this is sum of all value $sum');

  /// ///////****************** *//////////
  // print('please enter a number ');
  // int number = int.parse(stdin.readLineSync()!);
  // int sum = 1;

  // if(number==0){
  //  print('the fact is 1');
  // }else{
  //   do {
  //   sum = sum * number;
  //   number--;
  // } while (number > 0);
  //  print('the fact is $sum');
  // }

  // print('please enter a number ');
  // int usernumber = int.parse(stdin.readLineSync()!);
  // print('this is usernumber $usernumber');

  // for (int i = 0; i <= 10; i++) {
  //   print('$i * $usernumber = ${i * usernumber}');
  // }

  // int sum = 0;

  // int i = 10;
  // do {
  //   print('this is value of $i');
  //   i--;
  // } while (i >0);
  // int i = 0;
  // do {
  //   print('this is value of $i');
  //   i++;
  // } while (i < 10);
  // while (i > 0) {
  //   print('this is value of i $i');
  //   i--;
  // }
  // while (i < 10) {
  //   print('this is value of i $i');
  //   i++;
  // }

  // for (int i = 0; i <= 50; i++) {
  //   sum = i + sum;
  // }

  // for (int i = 0; i <= 50; i++) {
  //   print('this is value of $i');
  // }
  // print('this is sum $sum');
}
