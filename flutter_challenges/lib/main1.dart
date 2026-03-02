import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Challange 1"), backgroundColor: Colors.red),
        body: ButtonApp(),
      ),
      debugShowCheckedModeBanner: true,
    );
  }
}

class ButtonApp extends StatefulWidget {
  const ButtonApp({super.key});

  @override
  State<ButtonApp> createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  int _count = 0;

  void increaseCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Count $_count'),
          FloatingActionButton(
            onPressed: increaseCount,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
