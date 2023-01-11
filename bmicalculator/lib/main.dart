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
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  String outPut = "";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(80),
            child: Column(
              children: [
                TextFormField(
                  controller: height,
                  decoration: InputDecoration(hintText: "Enter Height in meter",
                      filled: true,
                      fillColor: Colors.blue.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: weight,
                  decoration: InputDecoration(hintText: "Enter Weight",
                    filled: true,
                    fillColor: Colors.blue.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    )
                ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                    onPressed: () {
                      calc();
                    },
                    icon: Icon(Icons.calculate),
                    label: Text("calculate")),
                Text(
                  outPut,
                  style: TextStyle(fontSize: 25, color: Colors.blue),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void calc() {
    double inputHeight = double.parse(height.text);
    double inputWeight = double.parse(weight.text);

    // print(inputHeight);
    setState(() {
      double heightSq = inputHeight * inputHeight;
      double result = inputWeight / heightSq;
      outPut = result.toStringAsFixed(2);


    });
  }
}
