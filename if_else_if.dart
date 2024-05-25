import 'dart:io';

void main() {
  print('please a your p money');
  int p_money = int.parse(stdin.readLineSync()!);

  if (p_money <= 1000) {
    print('buy a burger for me');
  } else if (p_money == 2000) {
    print('buy a burger and ice cream for me');
  } else {
    print('next time IA');
  }
}
