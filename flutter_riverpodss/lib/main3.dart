import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'provider.dart';

void main() async {
  runApp(ProviderScope(child: HomePage()));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Fetch Practice')),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [TextSection(), SizedBox(height: 30), InputSection()],
            ),
          ),
        ),
      ),
    );
  }
}

class TextSection extends ConsumerWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(userInputProvider);

    return asyncValue.when(
      data: (text) => Text(text),
      loading: () => const CircularProgressIndicator(), // new ahh
      error: (err, stack) => Text("Error: $err"),
    );
  }
}

class InputSection extends ConsumerStatefulWidget {
  const InputSection({super.key});

  @override
  ConsumerState<InputSection> createState() => _InputSectionState();
}

class _InputSectionState extends ConsumerState<InputSection> {
  // i need to understand this part
  final TextEditingController controller = TextEditingController();

  void inputSubmit() {
    final value = int.tryParse(controller.text);

    if (value == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Enter a valid number")));
      return;
    }

    ref.read(userInputProvider.notifier).fetchData(value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: 'Enter a number',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 30),
        ElevatedButton(onPressed: inputSubmit, child: Text('Submit')),
      ],
    );
  }
}
