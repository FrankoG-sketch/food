import 'package:flutter/material.dart';
import 'package:shop_app/Users/Customers/screens/home/Food_items/List.dart';

import '/../size_config.dart';
import '../Food_items/Popularitems.dart';
//import '../Food_items/List.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black,
          ),
        ),
        TextButton(
          child: Text(
            "See More",
            style: TextStyle(color: Color(0xFFBBBBBB)),
          ),
          onPressed: () => Navigator.pushNamed(context, Popitems.routeName),
        ),
      ],
    );
  }
}
