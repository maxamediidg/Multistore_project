import 'package:flutter/material.dart';

import '../Minor_screens/SubCateg_products.dart';

class sliderbar extends StatelessWidget {
  final String mainCategName;
  const sliderbar({super.key, required this.mainCategName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.05,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.brown.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50)),
          child: RotatedBox(
            quarterTurns: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                mainCategName == 'beauty'
                    ? const Text('')
                    : const Text('<< ', style: style),
                Text(mainCategName.toUpperCase(), style: style),
                mainCategName == 'men'
                    ? const Text('')
                    : const Text('>> ', style: style),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const style = TextStyle(
    color: Colors.brown,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    letterSpacing: 10);

class subCategModel extends StatelessWidget {
  final String mainCategName;
  final String subCategName;
  final String assetName;
  final String subCateglabel;

  const subCategModel({
    super.key,
    required this.assetName,
    required this.mainCategName,
    required this.subCategName,
    required this.subCateglabel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SubCategproducts(
                      MaincategName: mainCategName,
                      subcategName: subCategName,
                    )));
      },
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image(image: AssetImage(assetName)),
          ),
          Text(
            subCateglabel,
            style: const TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}

class CategHeaderLabel extends StatelessWidget {
  final String headerLabel;

  const CategHeaderLabel({super.key, required this.headerLabel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        headerLabel,
        style: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.5),
      ),
    );
  }
}