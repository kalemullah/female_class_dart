import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:statmanagment/gemini/gemini_model.dart';

class GeminiProvider extends ChangeNotifier {
  GeminiModel geminiModel = GeminiModel();
  List<String> textList = [];
  callApi(text) async {
    print('this is call api $text');
    textList.add(text);
    notifyListeners();

    String api =
        'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=AIzaSyBvZACyuKZtxnfjYS1yR28CIBKF0VevKlg';

    dynamic headers = {"Content-Type": "application/json"};

    dynamic body = {
      "contents": [
        {
          "parts": [
            {"text": text}
          ]
        }
      ]
    };
    // print('this is call api $body');
    var respos = await http.post(
        headers: headers, body: jsonEncode(body), Uri.parse(api));
    if (respos.statusCode == 200) {
      var maxdata = jsonDecode(respos.body);

      geminiModel = GeminiModel.fromJson(maxdata);
      notifyListeners();
      print(
          'this is original answer ${geminiModel.candidates?[0].content?.parts?[0].text}');
      textList.add("${geminiModel.candidates?[0].content?.parts?[0].text}");
      notifyListeners();
    }

    // print('this is tempdata ${respos.body}');
  }
}
