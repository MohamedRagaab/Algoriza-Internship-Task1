import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      const Center(child: Text('page1')),
      const Center(child: Text('page2')),
      const Center(child: Text('page3')),
    ];
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: const [Text('skip')],
          ),
          Row(
            children: const [Text('app')],
          ),
          MaterialButton(onPressed: () {}, child: const Text('button')),
          Container(
            child: PageView(
              children: list,
              onPageChanged: (int index) {
                // print(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
