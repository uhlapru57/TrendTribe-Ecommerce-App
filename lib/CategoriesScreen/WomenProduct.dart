import 'package:flutter/material.dart';

import '../MyProducts.dart';
import '../Card/ProductCard.dart';

class WomenProductScreen extends StatelessWidget {
  const WomenProductScreen({super.key});

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
        itemCount: MyProducts.womenProducts.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final womenProducts = MyProducts.womenProducts[index];
          return ProductCard(
            product: womenProducts,
          );
        },
      ),
    );
  }
}
