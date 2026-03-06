import 'package:flutter/material.dart';
import 'package:flutter_mvvm/ui/counterview/model_view/counter_viewmodel.dart';
import 'package:flutter_mvvm/ui/counterview/widgets/counter_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CounterViewModel vm = CounterViewModel();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterPage(vm: vm));
  }
}
