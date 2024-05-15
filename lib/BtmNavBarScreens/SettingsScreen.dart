import 'package:ficonsax/ficonsax.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trandtribe/MyOrder/MyOrderScreen.dart';
import 'package:trandtribe/ShippingAddress.dart';

import 'package:trandtribe/SignIn&UpScreen/SignIn.dart';
import 'package:trandtribe/Widgets/SettingsElements.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: false,
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        // centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        // actions: const [
        //   Padding(
        //     padding: EdgeInsets.only(right: 20),
        //     child: Icon(Iconsax.notification_bing),
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/userprofile.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "User Name",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "username0921@gmail.com",
                            style: TextStyle(
                              color: Colors.grey.shade500,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 260,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SettingsElements(
                          title: "My Profile",
                          icon: IconsaxBold.user,
                          onTap: () {
                            Get.to(const SignIn());
                          }),
                      const SizedBox(
                        height: 10,
                      ),
                      SettingsElements(
                          title: "My Orders",
                          icon: IconsaxBold.menu_board,
                          onTap: () {
                            Get.to(const MyOrderScreens());
                          }),
                      const SizedBox(
                        height: 10,
                      ),
                      SettingsElements(
                        title: "Shipping Address",
                        icon: IconsaxBold.truck,
                        onTap: () {
                          Get.to(const ShippingAddressScreen());
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SettingsElements(
                          title: "Payment Method",
                          icon: IconsaxBold.card,
                          onTap: () {
                            Get.to(const SignIn());
                          }),
                      const SizedBox(
                        height: 10,
                      ),
                      SettingsElements(
                          title: 'Settings',
                          icon: IconsaxBold.setting_2,
                          onTap: () {
                            Get.to(const SignIn());
                          }),
                    ],
                  ),
                ),
              ),
             const SizedBox(
                height: 25,
              ),
              Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SettingsElements(
                          onTap: () {},
                title: 'Help Center',
                icon: IconsaxBold.call_calling,),
                      const SizedBox(
                        height: 10,
                      ),
                      SettingsElements(
                         title: 'Privacy & Policy',
                icon: IconsaxBold.lock,
                          onTap: () {
                            Get.to(const MyOrderScreens());
                          }),
                      const SizedBox(
                        height: 10,
                      ),
                      SettingsElements(
                         title: 'Sign Out',
                icon: IconsaxBold.logout,
                        onTap: () {
                          Get.to(const ShippingAddressScreen());
                        },
                      ),
                     
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
