import 'package:flutter/widgets.dart';
import 'package:shop_app/Customers/screens/details/details_screen.dart';
import 'package:shop_app/Customers/screens/home/Food_items/Popularitems.dart';
import 'package:shop_app/Customers/screens/home/home_screen.dart';

import 'Customers/screens/details/details_screen.dart';
import 'Customers/screens/home/home_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  //SplashScreen.routeName: (context) => SplashScreen(),

  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),

  Popitems.routeName: (context) => Popitems(),
};
