import 'package:donut_app/util/donut_tille.dart';
import 'package:flutter/material.dart';

class donutTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [donutFlavor, donutPrice, donutColor, imageName]
    ["Choco", "92", Colors.brown, "assets/images/donut-1.png"],
    ["Grape Ape", "80", Colors.pink, "assets/images/donut-4.png"],
    ["Ice Cream", "36", Colors.blue, "assets/images/donut-2.png"],
    ["Strawberry", "45", Colors.red, "assets/images/donut-3.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
