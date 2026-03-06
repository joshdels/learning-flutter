import 'package:flutter/material.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        padding: EdgeInsets.all(8),
        children: [Text("Walking"), Text("Running")],
      ),
    );
  }
}
