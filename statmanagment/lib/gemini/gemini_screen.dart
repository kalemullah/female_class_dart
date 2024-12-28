import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statmanagment/gemini/gemini_provider.dart';

class GeminiScreen extends StatefulWidget {
  const GeminiScreen({super.key});

  @override
  State<GeminiScreen> createState() => _GeminiScreenState();
}

class _GeminiScreenState extends State<GeminiScreen> {
  TextEditingController textcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ChangeNotifierProvider(
        create: (context) => GeminiProvider(),
        child: Consumer<GeminiProvider>(
          builder: (context, model, child) => Scaffold(
            backgroundColor: Colors.teal,
            body: Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Gemini Screen',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView.builder(
                        itemCount: model.textList.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              title: Text(model.textList[index]),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              // enabledBorder: InputDecoration(),
                              hintText: 'Enter Text',
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                            controller: textcontroller,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (textcontroller.text.isNotEmpty) {
                              model.callApi(textcontroller.text);
                              textcontroller.clear();
                            }
                          },
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
