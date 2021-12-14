import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/Authentication/coustom_bottom_nav_bar.dart';

import '../../../enums.dart';

class ShowProgress extends StatelessWidget {
  static var routeName = '/progress';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      ),
    );
  }
}
