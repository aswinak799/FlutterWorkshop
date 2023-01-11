import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double split = 0;
  TextEditingController amt = TextEditingController();
  TextEditingController nofSplit = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bill Split"), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              TextFormField(controller: amt,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter Amount to Split"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(controller: nofSplit,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter number of Splits"),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    calc();
                  },
                  icon: Icon(Icons.add),
                  label: Text("Split")),SizedBox(height: 25,),
              Text(split.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),)
            ],
          ),
        ),
      ),
    );
  }
  void calc (){
    double Amount = double.parse(amt.text);
    double n = double.parse(nofSplit.text);
    setState(() {
      split = Amount/n;
    });

  }
}
