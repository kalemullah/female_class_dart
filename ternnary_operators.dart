void main() {
  int num1 = 10;
  int num2 = 20;
  int num3 = 30;

  num1 > num2 && num1 > num3
      ? print('num1 is greater')
      : num2 > num1 && num2 > num3
          ? print('num2 is greater')
          : print('num3 is greater');
}
