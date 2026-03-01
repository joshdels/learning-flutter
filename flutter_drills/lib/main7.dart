import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Joshua Practice App'),
          backgroundColor: Colors.red,
          leading: IconButton(onPressed: null, icon: Icon(Icons.menu)),
        ),
        body: const Center(child: Text('I am center')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('pressed na oi');
          },
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          child: Icon(Icons.add),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
