import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/Authentication/signIn.dart';
import 'package:shop_app/Customers/screens/home/home_screen.dart';
//import 'package:shop_app/Authentication/signUp.dart';
//import 'package:shop_app/Customers/screens/home/home_screen.dart';
import 'package:shop_app/routes.dart';
//import 'package:shop_app/screens/home/home_screen.dart';
//import 'package:shop_app/screens/profile/profile_screen.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:shop_app/theme.dart';
//import 'authentication/splash/splash_screen.dart';
import 'constants/firebase.dart';
//import 'controllers/appController.dart';

//import 'controllers/products_controller.dart';
=======
// import 'package:get/get.dart';
import 'package:shop_app/pages/homePage.dart';
import 'package:shop_app/pages/signIn.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import 'package:shop_app/Users/Supermarket/home.dart';
import 'package:shop_app/utils/routes.dart';
//import 'package:shop_app/screens/home/home_screen.dart';
//import 'package:shop_app/screens/profile/profile_screen.dart';
// import 'package:shop_app/Authentication/splash/splash_screen.dart';
//import 'package:firebase_core/firebase_core.dart';

// import 'constants/firebase.dart';
// import 'controllers/appController.dart';
// import 'controllers/authController.dart';
// import 'controllers/cart_controller.dart';
// import 'controllers/products_controller.dart';
>>>>>>> b0edc2f6fca7dac34f99329a204ad8bc902d1c49

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final title = "Food";
  await Firebase.initializeApp();
  // await initialization.then((value) {
  //   Get.put(AppController());
  //   Get.put(UserController());
  //   Get.put(ProducsController());
  //   Get.put(CartController());
  //});
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  String login = sharedPreferences.getString('email');
  print("Login: " + login.toString());

  runApp(MyApp(title: title, login: login));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
    this.title,
    this.login,
  }) : super(key: key);

  final String title;
  final String login;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      //home: HomeScreen(),
<<<<<<< HEAD
      home: login != null ? SignIn() : HomeScreen(),

      //Cals(),
      // We use routeName so that we dont need to remember the name
      //initialRoute: "/",
      routes: routes,
=======
      home: login != null ? HomePage() : SignIn(),

      //Cals(),
      // We use routeName so that we dont need to remember the name
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
>>>>>>> b0edc2f6fca7dac34f99329a204ad8bc902d1c49
    );
  }
}
