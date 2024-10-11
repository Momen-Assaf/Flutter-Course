import 'package:flutter/material.dart';

import 'hello_world_example.dart';

class BoxDecorationExample extends StatelessWidget {
  const BoxDecorationExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue,
      ),
      child: const Center(
        child: HelloWorldExample(),
      ),
    );
  }
}
