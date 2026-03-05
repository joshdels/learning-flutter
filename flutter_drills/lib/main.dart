import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Fetch Practice')),
        body: Center(
          child: Column(children: [TextSection(text: "Sample"), InputSection(onSubmit: onSubmit, onChange: onChange, userNumber: userNumber)]),
        ),
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  final String text;

  const TextSection({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class InputSection extends StatelessWidget {
  final bool onSubmit;
  final String onChange;
  final String userNumber;

  const InputSection({
    super.key,
    required this.onSubmit,
    required this.onChange,
    required this.userNumber,
  });

  void inputSubmit() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'enter a number',
            border: OutlineInputBorder(),
          ),
        ),
        ElevatedButton(onPressed: inputSubmit, child: Text('Submit')),
      ],
    );
  }
}

Future<void> fetchData(int number) async {
  try {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/${number}'),
    );

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print("$jsonData");
    }
  } catch (e) {
    print("$e");
  }
}
