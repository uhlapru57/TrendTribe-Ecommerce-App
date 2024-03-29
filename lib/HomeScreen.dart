import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trandtribe/Widgets/SearchField.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController searchController = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Discover",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                  ),
                  InkWell(
                    onTap: () {},
                    splashColor: Colors.transparent,
                    child: const Icon(Iconsax.notification_bing),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 290,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SearchField(
                        suffixIcon: const Icon(Iconsax.search_normal_1),
                        controller: searchController,
                        text: "Search Here",
                        textInputType: TextInputType.text,
                        obscure: false,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Iconsax.menu_1,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              DefaultTabController(
                length: 8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ButtonsTabBar(
                      height: 35,
                      physics: BouncingScrollPhysics(),
                      buttonMargin: EdgeInsets.only(left: 15),
                      backgroundColor: Colors.black,
                      labelStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: const [
                        Tab(text: "All"),
                        Tab(text: "Men"),
                        Tab(text: "Women"),
                        Tab(text: "Kids"),
                        Tab(text: "Kids"),
                        Tab(text: "Kids"),
                        Tab(text: "Kids"),
                        Tab(text: "Kids"),
                      ],
                    ),
                    const SizedBox(
                      height: 200, // Set the height of TabBarView
                      child: TabBarView(
                        children: [
                          // Widgets for each tab
                          Text("All content"),
                          Text("Tab 1 content"),
                          Text("Tab 2 content"),
                          Text("Tab 3 content"),
                          Text("Tab 3 content"),
                          Text("Tab 3 content"),
                          Text("Tab 3 content"),
                          Text("Tab 3 content"),
                        ],
                      ),
                    ),
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
