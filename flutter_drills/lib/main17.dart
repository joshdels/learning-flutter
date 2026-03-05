import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'My app', home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Josh App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              ),
            ),
            Expanded(
              flex: 2,
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              ),
            ),
            Expanded(
              child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
