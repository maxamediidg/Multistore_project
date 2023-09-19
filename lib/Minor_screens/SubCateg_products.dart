import 'package:flutter/material.dart';

import '../widgets/Appbar_widgets.dart';

class SubCategproducts extends StatelessWidget {
  final String MaincategName;
  final String subcategName;
  const SubCategproducts(
      {Key? key, required this.subcategName, required this.MaincategName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const AppbarBackButton(),
          title: AppbarTitle(title: subcategName)),
      body: Center(
        child: Text(MaincategName),
      ),
    );
  }
}
