import 'package:flutter/material.dart';
import 'package:flutter_mvvm/features/todo/section/todo_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Todo Practice")),
        body: Center(
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [TodoSection()],
          )),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
