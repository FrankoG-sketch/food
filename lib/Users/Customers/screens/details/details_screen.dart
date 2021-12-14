import 'package:flutter/material.dart';
import 'package:shop_app/Users/Customers/screens/home/Food_items/List.dart';

import '../../models/Product.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: agrs.product.rating),
      body: Body(product: agrs.product),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  final Food popular;

  ProductDetailsArguments({@required this.product, @required this.popular});
}
