import 'package:flutter/material.dart';
import 'package:multistore/widgets/Fake_search.dart';

List<ItemData> items = [
  ItemData(label: 'men'),
  ItemData(label: 'women'),
  ItemData(label: 'shoes'),
  ItemData(label: 'bags'),
  ItemData(label: 'electronics'),
  ItemData(label: 'accessories'),
  ItemData(label: 'home & garden'),
  ItemData(label: 'kids'),
  ItemData(label: 'beauty'),
];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0, backgroundColor: Colors.white, title: FakeSearch()),
      body: Stack(children: [
        Positioned(bottom: 0, left: 0, child: sideNavigator(Size)),
        Positioned(bottom: 0, right: 0, child: CategView(Size)),
      ]),
    );
  }

  Widget sideNavigator(Size size) {
    return SizedBox(
      height: size.height * 0.8,
      width: size.height * 0.1,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  for (var element in items) {
                    element.isSelected = false;
                  }
                  items[index].isSelected = true;
                });
              },
              child: Container(
                  color: items[index].isSelected == true
                      ? Colors.white
                      : Colors.grey.shade300,
                  height: 100,
                  child: Center(child: Text(items[index].label))),
            );
          }),
    );
  }

  Widget CategView(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.8,
      color: Colors.white,
    );
  }
}

class ItemData {
  String label;
  bool isSelected;
  ItemData({required this.label, this.isSelected = false});
}
