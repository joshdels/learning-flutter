import 'package:flutter/material.dart';

void main() {
  runApp(const ContainerWidget());
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          Expanded(child: ListApp()),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Center(child: Text("hello")),
            ),
          ),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("List Practice"),
      backgroundColor: const Color.fromARGB(255, 160, 180, 190),
      leading: IconButton(onPressed: null, icon: Icon(Icons.menu)),
    );
  }
}

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('B')),
        ),
        Container(
          height: 100,
          color: Colors.amber[400],
          child: const Center(child: Text('B')),
        ),
      ],
    );
  }
}
