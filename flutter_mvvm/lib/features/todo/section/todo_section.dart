import 'package:flutter/material.dart';
import '../view/todo_text.dart';
import '../view/todo_list.dart';

class TodoSection extends StatelessWidget {
  const TodoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [TodoText(), TodoList()],
      ),
    );
  }
}
