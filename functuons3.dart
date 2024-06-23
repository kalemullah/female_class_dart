import 'dart:io';

void main() {
  print('please a shap value');
  var shape = stdin.readLineSync();
  fun(shape);
}

fun(shape) {
  print('this is a ${shape ?? "111"} shape');
}
