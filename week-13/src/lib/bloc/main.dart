import 'package:flutter/material.dart';
import 'package:src/bloc/random_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BloC Bahtiar Rifa\'i',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const RandomScreen(),
    );
  }
}
