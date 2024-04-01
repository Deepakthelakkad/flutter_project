import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                  AssetImage('assets/A14.png'), // Replace with your image path
                  fit: BoxFit.fill),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(192, 70, 115, 1),
                  Color.fromRGBO(207, 97, 82, 1),
                ],
              ),
            ),
          ),
        ],

      ),
    );
  }
}
