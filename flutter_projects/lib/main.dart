// 📱 Login UI (no backend)

import 'package:flutter/material.dart';
import 'package:flutter_projects/components/appbar.dart';
import 'package:flutter_projects/components/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarSection(),
        body: Center(child: LoginSection()),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
