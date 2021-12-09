import 'package:flutter/material.dart';
import 'package:shop_app/Users/Customers/models/Product.dart';
//import 'package:shop_app/services/PopularService.dart';
//import 'package:shop_app/Users/Customers/models/Product.dart';
import '../../home/components/section_title.dart';
import '/../size_config.dart';
import 'package:shop_app/Users/Customers/components/product_card.dart';
import 'List.dart';

class Popitems extends StatelessWidget {
  static var routeName;

  void initState() {
    // super.initState();
    fetchDatabaseList();
  }

  fetchDatabaseList() async {
    dynamic resultant = await ListPage().getFoodList();

    if (resultant == null) {
      print('Unable to retrieve');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox.shrink();
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}
