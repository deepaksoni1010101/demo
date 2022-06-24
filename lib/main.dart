import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Demo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(146, 34, 244, 65),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Welcome Deepak',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.account_circle,
                  size: 140,
                  color: Color.fromARGB(255, 78, 56, 49),
                ),
              ),
            ),
            ListTile(
              tileColor: Color.fromARGB(255, 78, 56, 49),
              textColor: Colors.white,
              title: Text('Payments'),
            ),
            ListTile(
              title: Text('Visitors'),
              tileColor: Color.fromARGB(255, 78, 56, 49),
              textColor: Colors.white,
            ),
            ListTile(
              title: Text('Credits'),
              tileColor: Color.fromARGB(255, 78, 56, 49),
              textColor: Colors.white,
            ),
            ListTile(
              title: Text('Edit'),
              tileColor: Color.fromARGB(255, 78, 56, 49),
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
