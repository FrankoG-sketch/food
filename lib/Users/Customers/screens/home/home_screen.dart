import 'package:flutter/material.dart';
import 'package:shop_app/Authentication/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';
import '/../size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}