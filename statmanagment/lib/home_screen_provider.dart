import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:statmanagment/home_model.dart';

class HomeScreenProvider extends ChangeNotifier {
  HomeScreenProvider() {
    callapi();
  }
  int number = 0;
  bool isloding = false;
  SinglePostModel singlepost = SinglePostModel();

  void reset() {
    number = 0;
    notifyListeners();
  }

  void increase() {
    number++;
    notifyListeners();
  }

  void desrease() {
    if (number > 0) {
      number--;
    }

    notifyListeners();
  }

  void callapi() async {
    isloding = true;
    notifyListeners();
    var respos = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    // print(" ${respos.body}");
    if (respos.statusCode == 200) {
      var tempdata = jsonDecode(respos.body);

      // print('this is tempdata ${tempdata['body']}');
      singlepost = SinglePostModel.fromJson(tempdata);
      notifyListeners();
    } else {
      print('error');
    }
    isloding = false;
    notifyListeners();
  }
}
