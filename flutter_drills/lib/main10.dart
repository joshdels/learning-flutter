// Expanded, Rows, Container

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Expanded App')),
        body: const ExpandedRow(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ExpandedApp extends StatelessWidget {
  const ExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(color: Colors.blue, height: 100, width: 100),
          Expanded(child: Container(color: Colors.red, width: 100)),
          Container(color: Colors.blue, height: 100, width: 100),
        ],
      ),
    );
  }
}

class ExpandedRow extends StatelessWidget {
  const ExpandedRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: Container(color: Colors.red, height: 100)),
          Container(color: Colors.blue, height: 200, width: 50),
          Container(color: Colors.amber, height: 300, width: 50),
          Container(color: Colors.blue, height: 200, width: 50),
          Expanded(child: Container(color: Colors.red, height: 100)),
        ],
      ),
    );
  }
}
