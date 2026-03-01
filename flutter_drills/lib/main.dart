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
    return const Scaffold(appBar: MyAppBar(), body: BoxApp());
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("App Josh Practe"),
      backgroundColor: const Color.fromARGB(255, 160, 180, 190),
      leading: IconButton(onPressed: null, icon: Icon(Icons.menu)),
    );
  }
}

class BoxApp extends StatelessWidget {
  const BoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Box(), Box(), Box()],
      ),
    );
  }
}

class Box extends StatelessWidget {
  const Box({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(10.0),
        color: Colors.red[600],
        width: 140.0,
        height: 100.0,

        child: Column(
          children: [
            Icon(Icons.star, color: Colors.green[200]),
            Icon(Icons.alarm, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
