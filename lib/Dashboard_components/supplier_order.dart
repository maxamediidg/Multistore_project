import 'package:flutter/material.dart';
import 'package:multistore/widgets/Appbar_widgets.dart';

class SupplierOders extends StatelessWidget {
  const SupplierOders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: AppbarTitle(title: 'SupplierOrders'),
        leading: const AppbarBackButton(),
      ),
    );
  }
}
