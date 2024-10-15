import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen one"),
        backgroundColor: Colors.green,
      ),
      body: const Placeholder(),
    );
  }
}
