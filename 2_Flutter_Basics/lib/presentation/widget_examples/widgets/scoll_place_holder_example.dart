import 'package:flutter/material.dart';

class ScrollPlaceHolderExample extends StatelessWidget {
  const ScrollPlaceHolderExample({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.amber,
        height: size.height * 1.5,
        width: 40,
        child: const Text("PLACEHOLDER"));
  }
}
