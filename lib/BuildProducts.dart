import 'package:flutter/material.dart';
import 'MyProducts.dart'; // Importing MyProducts
import 'ProductCard.dart'; // Importing ProductCard

Widget _buildProducts() {
  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      childAspectRatio: 100 / 140,
    ),
    itemCount: MyProducts.allProducts.length,
    scrollDirection: Axis.vertical,
    itemBuilder: (BuildContext context, int index) {
      final allProducts = MyProducts.allProducts[index];
      return ProductCard(
        product: allProducts,
      );
    },
  );
}
