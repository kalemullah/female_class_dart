import 'dart:io';

void main() {
  print('please enter charactor:');
  String char = stdin.readLineSync()!;
  if (char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u') {
    print('Vowel');
  } else {
    print('Consonant');
  }
}
