import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: 100,
        child: Image.asset("assets/red.png", fit: BoxFit.fitHeight));
  }
}
