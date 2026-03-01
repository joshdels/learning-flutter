/* 
MaterialApp -> The whole app
Scaffold -> The page layout structure
AppBar -> top bar
Body -> The context

*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
        backgroundColor: Colors.red,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            print('leading pressend');
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.search)),
          IconButton(onPressed: null, icon: Icon(Icons.settings)),
          IconButton(
            onPressed: () {
              print('pressed');
            },
            icon: Icon(Icons.precision_manufacturing),
          ),
        ],
      ),
      body: const Center(child: Text('Center Widget in Scaffold')),
    );
  }
}
