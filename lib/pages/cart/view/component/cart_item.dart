import 'package:cart/data/models/product_model.dart';
import 'package:cart/pages/cart/controller/cart_controller.dart';
import 'package:cart/utils/color.dart';
import 'package:cart/widgets/product_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'button_item.dart';

class CartItem extends StatelessWidget {
  final CartController cartController = Get.find();
  final CartItem cartItem;
  final Product product;
  CartItem(this.cartItem, this.product);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProductImage(
          image: cartItem.product.image,
          height: 80,
          width: 80,
        ),
        SizedBox(width: 15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                cartItem.product.name,
                style: TextStyle(
                  fontSize: 19,
                  color: AppColors.DARK,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                      cartItem.quantity.toString() +"x",
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.DARK,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  
                  Text(
                    cartItem.product.price.toString(),
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.GREEN,
                      fontWeight: FontWeight.bold,
                    ),
                  ), 
                ],
              )
            ],
          ),
        ),
        Row(
          children: [
            CartItemButton(Icons.price_change, cartItem.decrementQuantity),
            SizedBox(width: 10),
            CartItemButton(Icons.add, cartItem.incrementQuantity),
            SizedBox(width: 10),
            CartItemButton(
                Icons.remove, () => cartController.deleteItem(cartItem)),
          ],
        )
      ],
    );
  }
}
