import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trandtribe/MyProducts.dart';
import 'package:trandtribe/ProductDetails.dart';
import '../Product.dart';
import '../Card/ProductCard.dart';

class AllProductScreen extends GetResponsiveView {
  AllProductScreen({Key? key}) ;

  @override
  Widget? builder() {
    List<Product> allProducts = MyProducts.getAllProducts();

    // Determine the number of columns based on the screen size
    int crossAxisCount;
    if (screen.isPhone) {
      crossAxisCount = 2;
    } else if (screen.isTablet) {
      crossAxisCount = 3;
    } else {
      crossAxisCount = 4;
    }

    return SingleChildScrollView(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 95 / 155,
        ),
        itemCount: allProducts.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final product = allProducts[index];
          return GestureDetector(
            onTap: () {
              Get.to(() => ProductDetailsScreen(
                product: product,
              ));
            },
            child: ProductCard(
              product: product,
            ),
          );
        },
      ),
    );
  }
}
