import 'package:flutter/material.dart';
import 'package:task1/screens/on_board_page.dart';

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
      title: 'Task1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnBoard(),
    );
  }
}
