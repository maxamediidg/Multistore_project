import 'package:flutter/material.dart';
import 'package:multistore/widgets/Appbar_widgets.dart';

class Manage_products extends StatelessWidget {
  const Manage_products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppbarTitle(title: 'Manage_products'),
        leading: const AppbarBackButton(),
      ),
    );
  }
}
