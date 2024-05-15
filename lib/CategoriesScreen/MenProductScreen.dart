import 'package:flutter/material.dart';

import '../MyProducts.dart';
import '../Card/ProductCard.dart';

class MenProductScreen extends StatelessWidget {
  const MenProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 95 / 160,
        ),
        itemCount: MyProducts.menProducts.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final menProducts = MyProducts.menProducts[index];
          return ProductCard(
            product: menProducts,
          );
        },
      ),
    );
  }
}
