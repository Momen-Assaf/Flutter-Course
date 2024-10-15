import 'package:basics/presentation/list/list_screen.dart';
import 'package:basics/presentation/widget_examples/widget_examples_screen.dart';
import 'package:flutter/material.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _RootBottomNagicationState();
}

class _RootBottomNagicationState extends State<RootBottomNavigation> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          WidgetExamplesScreen(),
          ListScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: Colors.amber,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'examples'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list'),
          ]),
    );
  }
}
