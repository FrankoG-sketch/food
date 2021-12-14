import 'package:flutter/material.dart';
import 'package:get/get.dart';

//import 'package:shop_app/Users/Supermarket/home.dart';
import 'package:shop_app/routes.dart';
//import 'package:shop_app/screens/home/home_screen.dart';
//import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/Authentication/splash/splash_screen.dart';
//import 'package:firebase_core/firebase_core.dart';

import 'package:shop_app/theme.dart';

import 'constants/firebase.dart';
import 'controllers/appController.dart';
import 'controllers/authController.dart';
import 'controllers/cart_controller.dart';
import 'controllers/products_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value) {
    Get.put(AppController());
    Get.put(UserController());
    Get.put(ProducsController());
    Get.put(CartController());
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: HomeScreen(),
      home: SplashScreen(), //Cals(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
