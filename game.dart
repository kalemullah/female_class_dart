import 'dart:io';
import 'dart:math';

void main() {
  print('this is a game');
  int randomNumber = Random().nextInt(100);
  int illtration = 0;
  while (true) {
    illtration++;
    print('please entet a number');
    int number = int.parse(stdin.readLineSync()!);
    if (randomNumber == number) {
      print('you win');
      print('you have tried $illtration times');
      break;
    } else if (randomNumber < number) {
      print('please enter a smaller number ');
    } else if (randomNumber > number) {
      print('please enter a greater number ');
    }
  }
}
