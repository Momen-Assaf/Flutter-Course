import 'package:basics/presentation/widget_examples/widgets/box_decoration_example.dart';
import 'package:basics/presentation/widget_examples/widgets/buttons_example.dart';
import 'package:basics/presentation/widget_examples/widgets/first_column_child_widget.dart';
import 'package:basics/presentation/widget_examples/widgets/image_example.dart';
import 'package:basics/presentation/widget_examples/widgets/last_column_child.dart';
import 'package:basics/presentation/widget_examples/widgets/layout_builder_example.dart';
import 'package:basics/presentation/widget_examples/widgets/scoll_place_holder_example.dart';
import 'package:flutter/material.dart';

class WidgetExamplesScreen extends StatelessWidget {
  const WidgetExamplesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
            const FirstColumnChildWidget(),
            const BoxDecorationExample(),
            const ImageExample(),
            ScrollPlaceHolderExample(size: size),
            const LastColumnChild(),
            const LayoutBuilderExample(),
            const ButtonsExample(),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint('clicked'),
          child: const Icon(Icons.ac_unit)),
    );
  }
}

