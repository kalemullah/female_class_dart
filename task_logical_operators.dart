import 'dart:io';

void main() {
  print('please enter first number');
  int num1 = int.parse(stdin.readLineSync()!);

  print('please enter second number');
  int num2 = int.parse(stdin.readLineSync()!);

  if (num1 % 2 == 0 && num2 % 2 == 0) {
    print('both numbers are even');
    print('the sum of numbers is ${num1 + num2}');
  } else if (num1 % 2 == 1 && num2 % 2 == 1) {
    print('both number are odd');
    print('the product of numbers is ${num1 * num2}');
  }
}
