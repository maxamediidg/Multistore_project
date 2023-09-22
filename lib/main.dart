import 'package:flutter/material.dart';
import 'package:multistore/main_Screens/customer_home.dart';
import 'main_Screens/welcomeScreen.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: welcomeScreen(),
    );
  }
}
