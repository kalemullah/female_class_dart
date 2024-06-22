import 'dart:io';

void main() {
  stdin.readLineSync();
  sayHello();
  add(10, b: 20);
  int a = add1(20, 20);
  print(a);
}

void sayHello() {
  print('good morning');
}

void add(int a, {int b = 0}) {
  print(a + b);
}

int add1(int a, int b) {
  int tmp = a + b;
  return tmp;
}
