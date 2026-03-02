import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Expanded App'), backgroundColor: Colors.red,),
        body: const ElevatedApp(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ElevatedApp extends StatefulWidget {
  const ElevatedApp({super.key});

  // Declare Stateful
  @override
  State<ElevatedApp> createState() => _ElevatedAppState();
}

class _ElevatedAppState extends State<ElevatedApp> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
    );

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: null,
            child: const Text('Disabled'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Enable'),
          ),
        ],
      ),
    );
  }
}
