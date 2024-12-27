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
        'https://api.weatherstack.com/current?access_key=9f895c010e8ba545266c63a7aa079ccc&query=$city'));

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
