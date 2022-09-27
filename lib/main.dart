import 'package:flutter/material.dart';
import 'package:web/Pages/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solaron',
      theme: ThemeData(),
      home: Index(),
    );
  }
}
