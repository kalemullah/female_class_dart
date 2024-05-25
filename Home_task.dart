import 'dart:io';

void main() {
  print('please enter first number');
  int num1 = int.parse(stdin.readLineSync()!);
  print('please enter second number');
  int num2 = int.parse(stdin.readLineSync()!);
  print('please enter third number');
  int num3 = int.parse(stdin.readLineSync()!);
  if (num1 > num2 && num1 > num3) {
    print('The largest number is $num1');
  } else if (num2 > num1 && num2 > num3) {
    print('The largest number is $num2');
  } else {
    print('The largest number is $num3');
  }
}
