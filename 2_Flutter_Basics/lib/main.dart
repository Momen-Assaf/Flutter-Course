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
            child: SingleChildScrollView(
              // physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      color: Colors.green,
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const Text("First Column child")),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: const Center(
                      child: Text(
                        "Hello world!",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 100,
                      width: 100,
                      child:
                          Image.asset("assets/red.png", fit: BoxFit.fitHeight)),
                  Container(
                      color: Colors.amber,
                      height: 500,
                      width: 40,
                      child: const Text("PLACEHOLDER")),
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      color: Colors.red,
                      child: const Text("last Column child")),
                ],
              ),
            )),
          floatingActionButton: FloatingActionButton(
              onPressed: () => debugPrint('clicked'),
              child: const Icon(Icons.ac_unit)),
        ));
  }
}
