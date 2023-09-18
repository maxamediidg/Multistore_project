import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const CupertinoSearchTextField(),
          bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.yellow,
              indicatorWeight: 8,
              tabs: [
                RepeatedTab(
                  label: 'men',
                ),
                RepeatedTab(
                  label: 'women',
                ),
                RepeatedTab(
                  label: 'shoes',
                ),
                RepeatedTab(
                  label: 'Bags',
                ),
                RepeatedTab(
                  label: 'Electronics',
                ),
                RepeatedTab(
                  label: 'Accessories',
                ),
                RepeatedTab(
                  label: 'Home & Garden',
                ),
                RepeatedTab(
                  label: 'kids',
                ),
                RepeatedTab(
                  label: 'Beauty',
                ),
              ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Text('men screen'),
          ),
          Center(
            child: Text('women screen'),
          ),
          Center(
            child: Text('shoes screen'),
          ),
          Center(
            child: Text('bags Screen'),
          ),
          Center(
            child: Text('electronics Screen'),
          ),
          Center(
            child: Text('accessories Screen'),
          ),
          Center(
            child: Text('home and garden Screen'),
          ),
          Center(
            child: Text('kids Screen'),
          ),
          Center(
            child: Text('beauty Screen'),
          )
        ]),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}
