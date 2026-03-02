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
        appBar: AppBar(
          title: const Text('Expanded App'),
          backgroundColor: Colors.red,
        ),
        body: const StateButton(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class StateButton extends StatefulWidget {
  const StateButton({super.key});

  // Declare Stateful
  @override
  State<StateButton> createState() => _ButtonState();
}

class _ButtonState extends State<StateButton> {
  int _count = 0;

  void handleIncrement() {
    setState(() {
      _count++;
    });
  }

  void resetCount() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('current Count $_count', style: const TextStyle(fontSize: 24)),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(200, 50),
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: handleIncrement,
            child: const Text('Increment'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: resetCount, child: const Text('Reset')),
        ],
      ),
    );
  }
}
