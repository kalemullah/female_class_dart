import 'dart:io';

void main() {
  print('this is task 4');
  //take two veraible from user and print that var
  print('Enter first number');
  int number1 = int.parse(stdin.readLineSync()!);
  print('Enter second number');
  int number2 = int.parse(stdin.readLineSync()!);
  print('this is number1 : $number1 and number2 : $number2');
  int sum = number1 + number2;
  int sub = number1 - number2;
  int mul = number1 * number2;

  double div = number1 / number2;
  int mode = number1 % number2;

  print('this is division : $div');
  print('this is mode : $mode');
}
