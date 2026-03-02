/*
🟢 Challenge 4: Form App

Make:
TextField
Button
When pressed → show text below
This forces you to learn:
TextEditingController
setState
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
        appBar: AppBar(title: Text("Form Practice")),
        body: Form(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Form extends StatefulWidget {
  const Form({super.key});

  @override
  State<Form> createState() => _FormState();
}

class _FormState extends State<Form> {
  final TextEditingController _controller = TextEditingController();

  String displayName = "";

  void handleShow() {
    setState(() {
      displayName = _controller.text;
    });
    print(displayName);
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 300,
            child: TextField(
              controller: _controller,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: handleShow, child: Text('Show Name')),
          const SizedBox(height: 20),
          Text("My Name is $displayName"),
        ],
      ),
    );
  }
}
