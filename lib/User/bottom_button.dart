import 'package:demo/User/chat_list.dart';
import 'package:demo/User/user_homepage.dart';
import 'package:demo/User/user_login.dart';
import 'package:demo/User/user_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatefulWidget {
  const BottomButton({super.key});

  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  int currentindex = 1;
  final pages = [
    const ChatList(),
    UserHomepage(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (newIndex) {
          setState(() {
            currentindex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.ellipses_bubble_fill,
                size: 30,
              ),
              label: 'message'),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                child: Icon(
                  CupertinoIcons.house,
                  color: Colors.white,
                ),
                radius: 20,
                backgroundColor: Color.fromRGBO(191, 68, 116, 1),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_fill, size: 30),
              label: 'Profile'),
        ],
      ),
    );
  }
}
