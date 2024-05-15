import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Product.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    String firstImage = widget.product.images.isNotEmpty ? widget.product.images[0] : ""; // Get the first image from the list

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: Get.height *0.28,
              width: Get.width * 0.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(firstImage), // Display the first image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              top: 5,
              right: 5,
              child: SizedBox(
                height: 45,
                width: 45,
                child: Card(
                  elevation: 2.5,
                  shadowColor: Colors.black54,
                  color: Colors.white,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                widget.product.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'EUR ${widget.product.price.toStringAsFixed(2)}', // Assuming price is of type double
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
