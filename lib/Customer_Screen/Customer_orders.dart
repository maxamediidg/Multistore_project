import 'package:flutter/material.dart';
import 'package:multistore/widgets/Appbar_widgets.dart';

class CustomerOrders extends StatelessWidget {
  const CustomerOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppbarTitle(title: 'CustomerOrders'),
        leading: const AppbarBackButton(),
      ),
    );
  }
}
