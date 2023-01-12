import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage("asset/dq.jpeg"),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Dulquer Salmaan",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Dulquer Salmaan (born 28 July 1986) is an Indian actor, playback singer and film producer who predominantly works in Malayalam and Tamil films, in addition to Telugu and Hindi films. He graduated with a bachelor's degree in business management from Purdue University and worked as a business manager in Dubai before pursuing a career in acting",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 20,
              ),
            ),
          )
        ],
      )),
    );
  }
}
