import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int intvalue = 1;
  int intvalue2 = 1;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("DiceApp")),
        ),
        backgroundColor: Colors.redAccent,
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    intvalue = Random().nextInt(6) + 1;
                  });

                  print(intvalue);
                },
                child: Image.asset(
                  "asset/dice$intvalue2.png",
                  height: 150,
                  width: 150,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    intvalue2 = Random().nextInt(6) + 1;
                    print(intvalue2);
                  });
                },
                child: Image.asset(
                  "asset/dice$intvalue.png",
                  height: 150,
                  width: 150,
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
