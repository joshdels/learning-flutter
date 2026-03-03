import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget implements PreferredSizeWidget {
  const AppBarSection({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.keyboard_return_outlined),
      title: Text('QFieldCloud Projects'),
      actions: [Icon(Icons.menu), const SizedBox(width: 18)],
      centerTitle: true,
    );
  }
}
