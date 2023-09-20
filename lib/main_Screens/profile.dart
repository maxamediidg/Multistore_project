import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
            expandedHeight: 140,
            flexibleSpace: LayoutBuilder(builder: (context, Constraints) {
              return FlexibleSpaceBar(
                title: AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: Constraints.biggest.height <= 120 ? 1 : 1,
                  child: const Text(
                    'Account',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                background: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.yellow, Colors.brown])),
                ),
              );
            }),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30))),
                        child: TextButton(
                          child: SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: const Center(
                                  child: Text(
                                'Cart',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 20),
                              ))),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        color: Colors.yellow,
                        child: TextButton(
                          child: SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: const Center(
                                  child: Text(
                                'Orders',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 20),
                              ))),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30))),
                        child: TextButton(
                          child: SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width * 0.2,
                              child: const Center(
                                  child: Text(
                                'Wishlist',
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 20),
                              ))),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 150,
                  child: Image(image: AssetImage('images/inapp/logo.jpg')),
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 50,
                        child: Divider(color: Colors.grey, thickness: 1),
                      )
                    ],
                  ),
                ),
                Text(
                  'Account Info.',
                  style: TextStyle(
                      color: Colors.pink,
                      fontSize: 24,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 40,
                  width: 50,
                  child: Divider(color: Colors.grey, thickness: 1),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
