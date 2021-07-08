import 'package:cart/data/models/cart_item.dart';
import 'package:cart/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<CartItem> cartItems = RxList<CartItem>([]);
 
  String get total {
    double fold = cartItems.fold(0, (subtotal, cartItem) {
      return subtotal + ((cartItem.product!.price)! * (cartItem.quantity));
    });
    return "U\$" + fold.toStringAsFixed(2);
  }

  deleteItem(CartItem cartItemModel) {
    cartItems.removeWhere((cartItem) {
      return cartItem.product!.id == cartItemModel.product!.id;
    });
  }

  placeOrder() {
    cartItems.clear();
    Get.back();
    Get.snackbar(
      "Placed",
      "Order placed with success!",
      backgroundColor: AppColors.DARK,
      colorText: AppColors.WHITE,
      padding: EdgeInsets.all(15),
      snackPosition: SnackPosition.BOTTOM,
      margin: EdgeInsets.all(25),
      icon: Icon(Icons.check, color: AppColors.LIGHT_GREEN, size: 21),
    );
  }
}
