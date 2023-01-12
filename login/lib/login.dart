import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login/home.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController uname = TextEditingController();
  TextEditingController passwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
          child: Column(
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("asset/dq.jpeg"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: uname,
                decoration: InputDecoration(
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    )),
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                controller: passwd,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    )),
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(Size.fromHeight(50))),
                      onPressed: () {
                        var username = uname.text.trim();
                        var password = passwd.text.trim();
                        if (username == "aswinak799" &&
                            password == "Aswin@123") {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return HomePage();
                              },
                            ),
                          );
                        } else {
                          final _error = "Incorrect Username or Password";
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(_error),
                            margin: EdgeInsets.all(20),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: Colors.amberAccent,
                          ));
                        }
                      },
                      icon: Icon(Icons.login_rounded),
                      label: Text('Login'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              TextButton(onPressed: () {}, child: Text("Forgot Password ?."))
            ],
          ),
        ),
      ),
    );
  }
}
