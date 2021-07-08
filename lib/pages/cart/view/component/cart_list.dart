import 'package:cart/pages/cart/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_item.dart';

class CartList extends StatelessWidget {
  final CartController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.separated(
        padding: EdgeInsets.all(25),
        itemCount: controller.cartItems.length,
        separatorBuilder: (context, index) => Divider(height: 25),
        itemBuilder: (context, index) {
          return CartItem(controller.cartItems[index]);
        },
      ),
    );
  }
}