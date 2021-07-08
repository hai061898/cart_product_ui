import 'package:cart/data/models/product_model.dart';
import 'package:cart/pages/detail/controller/controller_detail.dart';
import 'package:cart/utils/color.dart';
import 'package:cart/widgets/custom_button.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  final DetailController controller = Get.find();
  final Product product;

  ProductDetails(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),        
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 25),
              margin: EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.LIGHT,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      product.name ,
                      style: TextStyle(
                        fontSize: 32,
                        color: AppColors.DARK,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Obx(
                    () => Text(
                      product.description ,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.DARK,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    product.price.toString(),
                    style: TextStyle(
                      fontSize: 32,
                      color: AppColors.LIGHT_GREEN,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: CustomButton(
                    action: controller.addProduct,
                    label: "ADD TO CART",
                    icon: Icons.shopping_bag,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}