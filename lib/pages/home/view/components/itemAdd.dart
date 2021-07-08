import 'package:cart/data/models/product_model.dart';
import 'package:cart/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemAdd extends StatelessWidget {
  final Product product;
  ItemAdd(this.product);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: SizedBox(
        width: 40,
        height: 40,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: AppColors.LIGHT_GREEN,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
          ),
          child: Icon(
            Icons.shop_sharp,
            size: 21,
            color: AppColors.WHITE,
          ),
          onPressed: () =>
              Get.toNamed("/products/${this.product.id.toString()}"),
        ),
      ),
    );
  }
}
