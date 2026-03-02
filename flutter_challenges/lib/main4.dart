/*
🟢 Challenge 3: List Builder

Build:
List of 20 items
Use ListView.builder
Show index number
On tap → print index

Docs:

ListView.builder
GestureDetector or ListTile

This uses a listbuilder hehhe
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
        body: ListItem(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Index $index'),
          onTap: () {
            print(index);
          },
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}
