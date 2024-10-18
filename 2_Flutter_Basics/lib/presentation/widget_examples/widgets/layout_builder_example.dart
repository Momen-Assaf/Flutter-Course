import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: 300,
      height: 300,
      child: LayoutBuilder(builder: (context, constrains) {
        return Container(
          color: Theme.of(context).colorScheme.secondary,
          width: constrains.maxWidth * 0.6,
          height: constrains.maxHeight / 2,
          margin: const EdgeInsets.only(top: 20),
          child: const Center(child: Text("Iam in a builder")),
        );
      }),
    );
  }
}
