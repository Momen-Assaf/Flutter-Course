import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onTap;
  final IconData icon;
  final Color iconColor;
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.icon,
      required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
          // color: Colors.blue, color and decoration cant be used together
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
          child: InkWell(
            onTap: () => onTap(),
            splashColor: Colors.red,
            customBorder: const CircleBorder(),
            child: Center(
              child: Icon(icon, color: iconColor),
            ),
          )),
    );
  }
}
