import 'package:flutter/material.dart';
import 'appbar/appbar.dart';
import 'inputbar/inputbar.dart';
import 'mydaysection/mydaysection.dart';
import 'postsection/postsection.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(),
        body: Column(
          children: [InputBar(), MyDaySection(), PostSection(), Text('More GIS News Mate')],),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
