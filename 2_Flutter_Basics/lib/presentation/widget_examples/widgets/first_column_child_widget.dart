import 'package:flutter/material.dart';

class FirstColumnChildWidget extends StatelessWidget {
  const FirstColumnChildWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: 10),
        child: const Text("First Column child"));
  }
}
