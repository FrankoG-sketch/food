import 'package:flutter/material.dart';
import 'package:shop_app/Authentication/coustom_bottom_nav_bar.dart';
import 'package:shop_app/Users/Customers/screens/home/Food_items/Popularitems.dart';

import '../../../../../enums.dart';
import '../../../../../size_config.dart';

class Popular {
  static var routeName = '/popular';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Popitems(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
