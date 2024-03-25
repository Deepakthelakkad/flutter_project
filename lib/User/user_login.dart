import 'package:demo/User/user_homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(25, 93, 120, 1),
        // appBar: AppBar(
        //   title: Center(
        //       child: Text(
        //     "Welcome to Artify",
        //     style: TextStyle(
        //       fontSize: 40,
        //       color: Colors.blueAccent,
        //     ),
        //   )),
        //   backgroundColor: Colors.amber,
        // ),
        body: Container(
          padding: EdgeInsets.all(60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                child: Image.asset('assets/A12.png'),
              ),
              SizedBox(
                height: 13,
              ),
              // Center(
              //     child: Text(
              //   "Artify",
              //   style: TextStyle(fontSize: 70, color: Colors.lightBlue),
              // )),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Your Name",
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Your Password",
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserHomepage()));
                },
                child: Text("Signup"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Set the background color
                  foregroundColor:
                      Colors.white, // Set the text color (foreground)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
