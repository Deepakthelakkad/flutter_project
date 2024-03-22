import 'package:demo/Artists/artist_login.dart';
import 'package:demo/User/artist_view.dart';
import 'package:demo/User/user_homepage.dart';
import 'package:demo/User/user_login.dart';
import 'package:flutter/material.dart';

import 'Admin/admin_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ArtistView(),
    );
  }
}

