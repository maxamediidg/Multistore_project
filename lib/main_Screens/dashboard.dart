import 'package:flutter/material.dart';
import 'package:multistore/Dashboard_components/My_store.dart';
import 'package:multistore/widgets/Appbar_widgets.dart';

List<String> label = [
  'My store',
  'orders',
  'edit profile',
  'manage products',
  'balance',
  'statics'
];

List<IconData> icons = [
  Icons.store,
  Icons.shop_2_outlined,
  Icons.edit,
  Icons.settings,
  Icons.attach_money,
  Icons.show_chart,
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppbarTitle(title: 'Dashboard'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/welcome_Screen');
              },
              icon: const Icon(Icons.logout, color: Colors.black))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GridView.count(
            mainAxisSpacing: 50,
            crossAxisSpacing: 50,
            crossAxisCount: 2,
            children: List.generate(6, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyStore(),
                      ));
                },
                child: Card(
                    elevation: 20,
                    shadowColor: Colors.purpleAccent.shade200,
                    color: Colors.blueGrey.withOpacity(0.7),
                    child: Column(
                      children: [
                        Icon(
                          icons[index],
                          size: 50,
                          color: Colors.yellowAccent,
                        ),
                        Text(
                          label[index].toUpperCase(),
                          style: const TextStyle(
                              fontSize: 24,
                              color: Colors.yellowAccent,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                              fontFamily: 'Acme'),
                        )
                      ],
                    )),
              );
            })),
      ),
    );
  }
}
