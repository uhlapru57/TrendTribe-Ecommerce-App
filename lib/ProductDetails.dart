import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trandtribe/SeeReviewsScreen.dart';
import 'package:trandtribe/Widgets/SizeSelectionWidget.dart';

import 'Product.dart';

import 'Widgets/Price&addcart.dart';
import 'Widgets/QuantityWidget.dart';

class ProductDetailsScreen extends StatefulWidget {
  final Product product;
  ProductDetailsScreen({super.key, required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: false,
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: const Text(
          "Details",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Iconsax.heart5,
                color: Colors.red,
                size: 25,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height *0.85,
                      width: double.infinity,
                      child: PageView.builder(
                          itemCount: 5,
                          onPageChanged: (value) => setState(() {
                                currentImage = value;
                              }),
                          itemBuilder: (context, index) {
                            return Image.asset(widget.product.images[index], fit: BoxFit.cover,);
                          }),
                          
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                5,
                                (index) => AnimatedContainer(
                                      duration: const Duration(milliseconds: 300),
                                      width: currentImage == index ? 15 : 8,
                                      height: 8,
                                      margin: const EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Colors.black),
                                          color: currentImage == index
                                              ? Colors.black
                                              : Colors.transparent),
                                    )),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.product.name,
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                               Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    "4.0/5",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  InkWell(
                                  onTap: () {
                                    Get.to( SeeReviewsScreen());
                                  },
                                    child: const Text(
                                    "(46 reviews)",
                                  ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                widget.product.description,
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Choose Size",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizeSelectionWidget(),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Quantity",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const QuantityWidget(),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Available in stock",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
             
            ),
          ),
          PriceAddCart(
            product: widget.product,
          ),
        ],
      ),
    );
  }
}
