import 'package:flutter/material.dart';
import 'media_model.dart';
import 'nav.dart';
import 'Films.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Librairie';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyNavigationBar(),
    );
  }
}

