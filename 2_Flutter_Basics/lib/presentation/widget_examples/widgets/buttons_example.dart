import 'package:flutter/material.dart';

class ButtonsExample extends StatelessWidget {
  const ButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateColor.resolveWith((states) => Colors.blue)),
            onLongPress: () {
              debugPrint('long pressed');
            },
            onPressed: () {
              debugPrint('pressed');
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Text Button",
                  style: TextStyle(color: Colors.black, fontSize: 12)),
            )),
        IconButton(
            onPressed: () {
              debugPrint('icon pressed');
            },
            icon: const Icon(Icons.arrow_back)),
        Switch(
            value: true,
            onChanged: (value) {
              debugPrint('switch changed to: $value');
            })
      ],
    );
  }
}
