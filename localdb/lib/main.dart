import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> TaskList = [];
  TextEditingController controller = TextEditingController();
  void addtask() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> temp = prefs.getStringList('taskList') ?? [];
    temp.add(controller.text);
    prefs.setStringList('taskList', temp);
    controller.clear();
    setState(() {});
    TaskList = prefs.getStringList('taskList') ?? [];
    print('this is our list $TaskList');
  }

  delete(index) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    TaskList.removeAt(index);

    setState(() {});

    prefs.setStringList('taskList', TaskList);
  }

  @override
  void initState() {
    getAllTask();
    super.initState();
  }

  getAllTask() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    setState(() {
      TaskList = prefs.getStringList('taskList') ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                controller: controller,
                decoration: InputDecoration(hintText: 'add task'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: TaskList.length,
                  itemBuilder: (BuildContext context, index) {
                    return ListTile(
                      title: Text(TaskList[index]),
                      trailing: GestureDetector(
                        onTap: () {
                          delete(index);
                        },
                        child: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addtask,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
