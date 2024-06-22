import 'dart:io';

void main() {
  // List<String> Names = ['sapna', 'baji', 'Najeeba', 'fyp', 'css', 'DBMS'];
  var countryCapitalMap = {};
  for (int i = 0; i < 2; i++) {
    print('Enter a country (or type "exit" to finish):');
    String? country = stdin.readLineSync();
    print('Enter the capital of $country:');
    String? capital = stdin.readLineSync();

    countryCapitalMap[country] = capital;
  }
  print('\nCountry-Capital Map: $countryCapitalMap');
}
