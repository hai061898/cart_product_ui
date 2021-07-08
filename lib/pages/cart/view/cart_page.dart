import 'package:cart/pages/cart/controller/cart_controller.dart';
import 'package:cart/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'component/cart_list.dart';
import 'component/cart_total.dart';

class CartPage extends GetView<CartController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          backgroundColor: AppColors.LIGHT,
          appBar: AppBar(
            title: Text("Cart"),
            leading: IconButton(
              onPressed: ()=>Get.back(), 
              icon: Icon(Icons.arrow_back_ios),),
          ),
          body: CartList(),
          bottomNavigationBar: CartTotal(),
        );
    
  
  }
}