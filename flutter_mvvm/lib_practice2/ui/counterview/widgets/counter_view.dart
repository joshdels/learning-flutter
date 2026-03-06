import 'package:flutter/material.dart';
import 'package:flutter_mvvm/ui/counterview/model_view/counter_viewmodel.dart';

class CounterPage extends StatefulWidget {
  final CounterViewModel vm;

  const CounterPage({super.key, required this.vm});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  void initState() {
    super.initState();

    widget.vm.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MVVM Counter")),
      body: Center(
        child: Text(
          widget.vm.counter.toString(),
          style: const TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: widget.vm.increment,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: widget.vm.decrement,
            child: const Icon(Icons.deck),
          ),
        ],
      ),
    );
  }
}
