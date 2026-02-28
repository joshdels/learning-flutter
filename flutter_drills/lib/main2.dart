import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'Flutter practice', home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.ac_unit_outlined),
          tooltip: 'Joshua Gubaa daw ning menu menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search test',
            onPressed: null,
          ),
        ],
      ),
      body: const Center(child: Text('Hello, world')),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add',
        onPressed: null,
        child: Icon(Icons.multiple_stop),
      ),
    );
  }
}
