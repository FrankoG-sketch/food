import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:shop_app/Users/Supermarket/home.dart';
import 'package:shop_app/routes.dart';
//import 'package:shop_app/screens/home/home_screen.dart';
//import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/Authentication/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:shop_app/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
