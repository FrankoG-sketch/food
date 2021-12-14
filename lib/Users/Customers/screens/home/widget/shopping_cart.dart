import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shop_app/Users/Customers/widgets/custom_btn.dart';
import 'package:shop_app/Users/Customers/widgets/custom_text.dart';
import 'package:shop_app/constants/controllers.dart';

import 'cart_item_widget.dart';

class ShoppingCartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: CustomText(
                text: "Shopping Cart",
                size: 24,
                weight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Obx(() => Column(
                  children: userController.userModel.value.cart
                      .map((cartItem) => CartItemWidget(
                            cartItem: cartItem,
                          ))
                      .toList(),
                )),
          ],
        ),
        Positioned(
            bottom: 30,
            child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                child: Obx(
                  () => CustomButton(
                      text:
                          "Pay (\$${cartController.totalCartPrice.value.toStringAsFixed(2)})",
                      onTap: () {}),
                )))
      ],
    );
  }
}
