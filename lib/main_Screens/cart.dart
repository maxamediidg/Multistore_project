import 'package:flutter/material.dart';
import 'package:multistore/main_Screens/customer_home.dart';
import 'package:multistore/widgets/Appbar_widgets.dart';
import 'package:multistore/widgets/categ_widgets.dart';

import '../widgets/yellow_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppbarTitle(title: 'cart'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_forever,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('your Cart is Empty!', style: TextStyle(fontSize: 30)),
            const SizedBox(
              height: 50,
            ),
            Material(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(25),
              child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.6,
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CustomerHomeScreen()));
                  },
                  child: const Text(
                    'continue shopping',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Text(
                  'Total: \$',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  '00.00',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
              ],
            ),
            yellowButton(
              width: 0.45,
              label: 'CHECK OUT',
              onpressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
