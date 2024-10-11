import 'package:flutter/material.dart';

class HelloWorldExample extends StatelessWidget {
  const HelloWorldExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Hello world!",
      style: TextStyle(
        color: Colors.red,
        fontSize: 20,
      ),
    );
  }
}
