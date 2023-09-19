import 'package:flutter/material.dart';
import 'package:multistore/utilities/categ_list.dart';
import 'package:multistore/widgets/categ_widgets.dart';

class electronicCategory extends StatelessWidget {
  const electronicCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CategHeaderLabel(
                  headerLabel: 'Electronics',
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                        mainAxisSpacing: 70,
                        crossAxisSpacing: 15,
                        crossAxisCount: 3,
                        children: List.generate(electronics.length, (index) {
                          return subCategModel(
                            mainCategName: 'electronics',
                            subCategName: electronics[index],
                            assetName:
                                'images/electronics/electronics$index.jpg',
                            subCateglabel: electronics[index],
                          );
                        })))
              ],
            ),
          ),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: sliderbar(
            mainCategName: 'electronics',
          ),
        )
      ]),
    );
  }
}
