import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  var operator;
  double num1 = 0, num2 = 0;
  String text = "", result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CALCULATOR"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 100,
                right: 20,
              ),
              child: Text(
                text,
                textAlign: TextAlign.end,
                style: GoogleFonts.adamina(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            height: 150,
            width: double.infinity,
            color: Colors.grey.shade400,
          ),
          Expanded(
            child: Row(
              children: [
                newMethod("C", null),
                newMethod("<-", null),
                newMethod("%", null),
                newMethod("/", Colors.pink.shade100),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                newMethod("7", null),
                newMethod("8", null),
                newMethod("9", null),
                newMethod("x", Colors.pink.shade100),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                newMethod("4", null),
                newMethod("5", null),
                newMethod("6", null),
                newMethod("-", Colors.pink.shade100),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                newMethod("1", null),
                newMethod("2", null),
                newMethod("3", null),
                newMethod("+", Colors.pink.shade100),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                newMethod("+/-", null),
                newMethod("0", null),
                newMethod(".", null),
                newMethod("=", Colors.pinkAccent.shade100),
              ],
            ),
          )
        ],
      )),
    );
  }

  Expanded newMethod(String t, Color? color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          fixedSize: MaterialStateProperty.all(
            Size.fromHeight(120),
          ),
        ),
        onPressed: () {
          calculate(t);
        },
        child: Text(
          t,
          style: GoogleFonts.acme(fontSize: 40),
        ),
      ),
    );
  }

  void calculate(String t) {
    if (t == "C") {
      text = "";
      result = "";
      num1 = 0;
      num2 = 0;
    } else if (t == "<-") {
      // int backvar = int.parse(result);
      int len = text.length;
      result = text.substring(0, len - 1);
    } else if (t == "+" || t == "-" || t == "x" || t == "/") {
      operator = t;
      num1 = double.parse(text);
      result = "";
      // print(operator);
    } else if (t == "=") {
      num2 = double.parse(text);
      switch (operator) {
        case "+":
          result = (num1 + num2).toString();
          break;
        case "-":
          result = (num1 - num2).toString();
          break;
        case "x":
          result = (num1 * num2).toString();
          break;
        case "/":
          if (num2 == 0) {
            result = "Division by zero not defind";
            // result = "";
          } else {
            result = (num1 / num2).toString();
          }

          break;
      }
    } else {
      result = text + t;
    }
    setState(() {
      text = result;
    });
  }
}
