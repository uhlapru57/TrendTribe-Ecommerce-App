import 'package:flutter/material.dart';

class CateTabBar extends StatelessWidget {
  final TabController tabController;
  const CateTabBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: [
          const Tab(
            icon: Icon(Icons.home),
          ),
          const Tab(
            icon: Icon(Icons.payment),
          ),
          const Tab(
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
