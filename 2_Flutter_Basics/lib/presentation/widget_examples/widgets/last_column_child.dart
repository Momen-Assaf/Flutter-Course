import 'package:flutter/material.dart';

class LastColumnChild extends StatelessWidget {
  const LastColumnChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        color: Colors.red,
        child: const Text("last Column child"));
  }
}
