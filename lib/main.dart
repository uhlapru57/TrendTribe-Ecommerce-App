import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trandtribe/OnBoardScreen.dart';
import 'package:get/get.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      opaqueRoute: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          // useMaterial3: true,
          ),
      home: const OnBoardScreen(),
    );
  }
}