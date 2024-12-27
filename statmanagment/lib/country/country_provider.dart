import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:statmanagment/country/country_model.dart';

class CountryProvider extends ChangeNotifier {
  CountryProvider() {
    pickCountry();
  }
  bool isloader = false;
  CountryNamAndFlageModel countryName = CountryNamAndFlageModel();

  pickCountry() async {
    isloader = true;
    notifyListeners();
    var respos = await http.get(
        Uri.parse('https://countriesnow.space/api/v0.1/countries/flag/images'));
    // print(" ${respos.body}");
    if (respos.statusCode == 200) {
      var tempdata = jsonDecode(respos.body);
      countryName = CountryNamAndFlageModel.fromJson(tempdata);
      notifyListeners();
      print('this is tempdata ${tempdata}');
    }
    isloader = false;
    notifyListeners();
  }
}
