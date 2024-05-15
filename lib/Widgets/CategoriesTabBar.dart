import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'package:trandtribe/CategoriesScreen/AllProductScreen.dart';
import 'package:trandtribe/CategoriesScreen/KidsProducts.dart';
import 'package:trandtribe/CategoriesScreen/MenProductScreen.dart';
import 'package:trandtribe/CategoriesScreen/WomenProduct.dart';

class CategoriesTabBar extends StatelessWidget {
  const CategoriesTabBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TabBar(
                labelStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                unselectedLabelColor: Colors.black54,
                indicator: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                dividerColor: Colors.transparent,
                // indicatorPadding: const EdgeInsets.symmetric(
                //     horizontal: 10),

                tabs: const [
                  Tab(text: 'All'),
                  Tab(text: 'Men'),
                  Tab(text: 'Women'),
                  Tab(text: 'Kids'),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
             Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    AllProductScreen(),
                    MenProductScreen(),
                    WomenProductScreen(),
                    KidsProducts(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
