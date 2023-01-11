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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildExpanded(Colors.red),
              buildExpanded(Colors.orange),
              buildExpanded(Colors.yellow),
              buildExpanded(Colors.greenAccent),
              buildExpanded(Colors.orange),
              buildExpanded(Colors.blue),
              buildExpanded(Colors.pink),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildExpanded(Color c) {
    return Expanded(
        child: TextButton(onPressed: (){

        },
          child: Container(
            color: c,
          ),
        ));
  }
}
