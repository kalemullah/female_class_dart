import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statmanagment/home_screen_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print('this is screen rebuild');
    return ChangeNotifierProvider(
      create: (context) => HomeScreenProvider(),
      child: Consumer<HomeScreenProvider>(
        builder: (context, model, value) => Scaffold(
          appBar: AppBar(
            title: const Text('Home Screen'),
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 200,
                  color: Colors.teal,
                  child: Center(child: Text('${model.number}')),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        model.callapi();
                        // model.increase();
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        color: Colors.teal,
                        child: Center(
                            child: Text(
                          '+',
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        model.desrease();
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        color: Colors.teal,
                        child: Center(
                            child: Text(
                          '--',
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        )),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    model.reset();
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.teal,
                    child: Center(
                        child: Text(
                      'Reset',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    )),
                  ),
                ),
                model.isloding
                    ? CircularProgressIndicator()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('this is id ${model.singlepost.id}'),
                          Text('this is user id ${model.singlepost.userId}'),
                          Text('this is title ${model.singlepost.title}'),
                          Text('this is body ${model.singlepost.body}'),
                        ],
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
