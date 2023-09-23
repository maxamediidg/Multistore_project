import 'package:flutter/material.dart';
import 'package:multistore/widgets/Appbar_widgets.dart';

class StaticScreen extends StatelessWidget {
  const StaticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppbarTitle(title: 'Statics Screen'),
        leading: const AppbarBackButton(),
      ),
    );
  }
}
