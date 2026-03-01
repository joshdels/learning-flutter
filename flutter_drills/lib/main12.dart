import 'package:flutter/material.dart';

void main() {
  runApp(const TextApp());
}

class TextApp extends StatelessWidget {
  const TextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('TextField')),
        body: const Center(child: TextFieldSample()),
      ),
    );
  }
}

class TextFieldSample extends StatelessWidget {
  const TextFieldSample({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
    );
  }
}
