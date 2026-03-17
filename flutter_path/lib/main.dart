import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(body: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  Future<void> getTempararyPath() async {
    final directory = await getTemporaryDirectory();
    print(directory.path);
  }

    Future<void> getApplicationPath() async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory.path);
  }

    Future<void> getDownloadPath() async {
    final directory = await getDownloadsDirectory();
    print(directory?.path);
  }

  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: getTempararyPath, child: Text("Temporary")),
        ElevatedButton(onPressed: getApplicationPath, child: Text("Application")),
        ElevatedButton(onPressed: getDownloadPath, child: Text("Download")),
      ],
    );
  }
}
