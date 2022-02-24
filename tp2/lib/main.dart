import 'package:flutter/material.dart';
import 'ListApp.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'TP2';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListApp(),
      );
  }
}

