import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/input_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Contoh TextField")),
        body: Container(
          margin: const EdgeInsetsDirectional.only(
            top: 30,
          ),
          child: const InputWidget(),
        ),
      ),
    );
  }
}
