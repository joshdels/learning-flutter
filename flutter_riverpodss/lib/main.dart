import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }

  void decremenet() {
    state--;
  }
}

final counterProvider = NotifierProvider<CounterNotifier, int>(
  CounterNotifier.new,
);

void main() {
  runApp(ProviderScope(child: CountView()));
}

class CountView extends ConsumerWidget {
  const CountView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Count: $counter')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(counterProvider.notifier).increment();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
