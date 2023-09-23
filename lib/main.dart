import 'package:flutter/material.dart';
import 'package:multistore/main_Screens/customer_home.dart';
import 'package:multistore/main_Screens/supplier_home.dart';
import 'main_Screens/welcomeScreen.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: welcomeScreen(),
      initialRoute: '/welcome_Screen',
      routes: {
        '/welcome_Screen': (context) => const welcomeScreen(),
        '/Customer_home': (context) => const CustomerHomeScreen(),
        '/Supplier_home': (context) => const SupplierHomeScreen(),
      },
    );
  }
}
