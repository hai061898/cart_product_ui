import 'package:cart/data/models/product_model.dart';
import 'package:cart/pages/detail/controller/controller_detail.dart';
import 'package:cart/utils/color.dart';
import 'package:cart/widgets/product_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/detail.dart';

class DetailPage extends GetView<DetailController> {
  late final Product product;
  @override
  Widget build(BuildContext context) {
   
      return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: AppBar(
            title: Text("Product"),
            leading:IconButton(
              onPressed: ()=>Get.back(),
              icon: Icon(Icons.arrow_back),
            ), 
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Obx(
                  () => ProductImage(
                    image: product.image,
                    height: Get.width - 50,
                    padding: 25, width: 0,
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Obx(() => ProductDetails(product)),
        
      
    );
  }
}