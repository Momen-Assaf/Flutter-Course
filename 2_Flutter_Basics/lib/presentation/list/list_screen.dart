import 'package:basics/presentation/list/widgets/list_item.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> example = ['example', 'list', 'list', 'widget', 'string'];
    return Scaffold(
        appBar: AppBar(title: const Text("ListView Example")),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.separated(
              itemCount: example.length,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemBuilder: (context, index) {
                return ListItem(
                  title: example[index],
                  index: index,
                );
              }),
        ));
  }
}
