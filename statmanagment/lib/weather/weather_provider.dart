import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:statmanagment/weather/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherProvider() {
    getWeatherData('peshawar');
  }

  WeatherModel weatherModel = WeatherModel();
  bool isloading = false;
  getWeatherData(city) async {
    isloading = true;
    notifyListeners();
    var respos = await http.get(Uri.parse(
        'https://api.weatherstack.com/current?access_key=d87e5a0b3234f4659fdafd765de9a32c&query=$city'));

    // print('this is tempdata ${respos.body}');
    if (respos.statusCode == 200) {
      var tempdata = jsonDecode(respos.body);
      weatherModel = WeatherModel.fromJson(tempdata);
      notifyListeners();
    }
    isloading = false;
    notifyListeners();
  }
}
