import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Screen2(),
    );
  }
}

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: const Icon(Icons.shopping_cart_checkout),
          title: const Text('this is appbar'),
          actions: const [
            Icon(
              Icons.search,
              size: 20,
              color: Colors.amberAccent,
            ),
            Icon(Icons.more_vert),
          ],
          centerTitle: true,
        ),
        body:
            // Container(
            //   color: Colors.blueAccent,
            //   // child: const Column(
            //   //   crossAxisAlignment: CrossAxisAlignment.center,
            //   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   //   children: [
            //   //     Text('this'),
            //   //     Text('this is body1'),
            //   //     Text('this is body2'),
            //   //     Text('this is body3'),
            //   //   ],
            //   // ),

            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Text(' body1'),
            //       Text('body2'),
            //       Text('body3'),
            //     ],
            //   ),
            // )

            //     Center(
            //   child: Column(
            //     // mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       SizedBox(height: 10),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.amber,
            //       ),
            //       SizedBox(height: 30),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.grey,
            //         child: Center(child: Text('this is text')),
            //       ),
            //       SizedBox(height: 100),
            //       Container(
            //         height: 100,
            //         width: 100,
            //         color: Colors.redAccent,
            //       ),
            //     ],
            //   ),
            // )

            Row(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black12,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black12,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black12,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black12,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.blueAccent,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black12,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.black12,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.amber,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ],
            ),
        
        
          ],
        ));
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
