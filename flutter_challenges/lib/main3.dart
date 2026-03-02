/* 🟢 Challenge 2: Layout Practice
Create this layout:
AppBar

3 colored containers in a Column
Last one expands
Padding around everything

Docs to check:
Expanded
MainAxisAlignment
CrossAxisAlignment
*/

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
        appBar: AppBar(title: Text("Hello")),
        body: ContainerApp(),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: <Widget>[
        Container(padding: const EdgeInsets.all(8.0), color: Colors.blue),
        Container(padding: const EdgeInsets.all(8.0), color: Colors.red),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.yellow,
          ),
        ),
      ],
    ));
  }
}
