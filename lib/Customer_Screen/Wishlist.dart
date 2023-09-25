import 'package:flutter/material.dart';
import 'package:multistore/widgets/Appbar_widgets.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppbarTitle(title: 'WishlistScreen'),
        leading: const AppbarBackButton(),
      ),
    );
  }
}
