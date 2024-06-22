import 'dart:io';

void main() {
  // Map<String, String> score = {
  //   "email": "asd@gmail.com",
  //   "password": "asd123",
  // };

  // score['name'] = 'John Doe';
  // print('this is value ${score['password']}');
  // print('Map: $score');
  // Map<String, String> CountryNmaes = {};
  // for (int i = 0; i < 5; i++) {
  //   print('please enter country ');
  //   String country = stdin.readLineSync()!;
  //   print('please enter capital');
  //   String capital = stdin.readLineSync()!;
  //   CountryNmaes[country] = capital;

  // }
  
  // print('Country and Capital: $CountryNmaes');

  Map<String, String> CountryNmaes = {
    'Pakistan': 'Islamabad',
    'India': 'New Delhi',
    'USA': 'Washington DC',
    'UK': 'London',
    'UAE': 'Abu Dhabi',
  };

  String subjectname = stdin.readLineSync()!;

  print('Capital of $subjectname is ${CountryNmaes[subjectname]}');
}
///task  country and capital city

