import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter basics'),
          backgroundColor: const Color.fromARGB(255, 128, 117, 243),
          centerTitle: true,
          ),
        body: const Center(
          child: Text('Hello world!'),
        ),
      )
    );
  }
}