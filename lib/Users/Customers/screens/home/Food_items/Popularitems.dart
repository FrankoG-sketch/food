import 'package:flutter/material.dart';
//import 'package:shop_app/Users/Customers/models/Product.dart';
//import 'package:shop_app/services/PopularService.dart';
//import '../../home/components/section_title.dart';
import '/../size_config.dart';
import 'popular_card.dart';
import 'List.dart';

class Popitems extends StatelessWidget {
  static var routeName;
  /* @override
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
      ),
    );
  }*/
  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(2), children: <Widget>[
      ...List.generate(
        popProducts.length,
        (index) {
          if (popProducts[index].isPopular)
            return ProductCard(product: popProducts[index]);

          return SizedBox.shrink();
        },
      ),
      SizedBox(width: getProportionateScreenWidth(20)),
    ]);
  }
}
