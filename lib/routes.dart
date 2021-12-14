import 'package:flutter/widgets.dart';
import 'package:shop_app/Users/Customers/screens/cart/cart_screen.dart';
import 'package:shop_app/Authentication/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/Users/Customers/screens/details/details_screen.dart';
import 'package:shop_app/Authentication/forgot_password/forgot_password_screen.dart';
//import 'package:shop_app/Users/Customers/screens/home/Food_items/Popular.dart';
import 'package:shop_app/Users/Customers/screens/home/home_screen.dart';
import 'package:shop_app/Authentication/login_success/login_success_screen.dart';
//import 'package:shop_app/Authentication/otp/otp_screen.dart';
import 'package:shop_app/Authentication/profile/profile_screen.dart';
import 'package:shop_app/Authentication/sign_in/sign_in_screen.dart';
import 'package:shop_app/Authentication/splash/splash_screen.dart';
import '../Users/Customers/screens/progress.dart';
import 'Authentication/sign_up/sign_up_screen.dart';
//import 'Users/Customers/screens/home/Food_items/List.dart';
import 'Users/Customers/screens/home/Food_items/Popularitems.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  ShowProgress.routeName: (context) => ShowProgress(),
  //OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  Popitems.routeName: (context) => Popitems(),
  //ListPage.routeName: (conext) => ListPage(),
};
