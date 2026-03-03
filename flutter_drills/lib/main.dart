import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: HomeRoute()),
  );
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Front Page today'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.green),
            foregroundColor: WidgetStateProperty.all(Colors.white),
          ),
          child: const Text('Click Me!'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Router Page na daw"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.green),
            foregroundColor: WidgetStateProperty.all(Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Home Baby!'),
        ),
      ),
    );
  }
}
