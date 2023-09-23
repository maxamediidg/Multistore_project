import 'package:flutter/material.dart';
import 'package:multistore/widgets/Appbar_widgets.dart';

class MyStore extends StatelessWidget {
  const MyStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppbarTitle(title: 'My_store'),
        leading: const AppbarBackButton(),
      ),
    );
  }
}
