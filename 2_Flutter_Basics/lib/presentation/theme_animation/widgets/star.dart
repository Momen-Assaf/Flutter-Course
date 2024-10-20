import 'package:basics/application/theme_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Star extends StatelessWidget {
  const Star({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 300),
          opacity: themeService.isDarkModeOn ? 1 : 0,
          child: Container(
            height: 2,
            width: 2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0xFFC9E9FC),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFC9E9FC).withOpacity(0.5),
                  blurRadius: 5,
                  spreadRadius: 4,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
