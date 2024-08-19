import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          backgroundColor: Colors.amber,
        )),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter basics'),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              height: 300,
              width: 300, //if width not defined it takes the max width
              decoration: BoxDecoration(
                  color: Colors.blue, 
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  'Hello world!',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.amber,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () => debugPrint('clicked'),
              child: const Icon(Icons.ac_unit)),
        ));
  }
}
