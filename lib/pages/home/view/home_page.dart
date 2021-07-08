import 'package:cart/pages/home/controller/home_controller.dart';
import 'package:cart/routes/routes_name.dart';
import 'package:cart/utils/color.dart';
import 'package:cart/widgets/appbar_action.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'components/list_categories.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.LIGHT,
        appBar: AppBar(
          title: Text('Cart'),
          actions: [
            Obx(
              () => CustomAppBar(
                action: () => Get.toNamed(RoutesName.HOME),
                icon: Icons.shop,
                quantity: controller.cartQuantity,
              ),
            ),
          ],
        ),
        body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: ListCategories(),
              ),
              SliverPadding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  bottom: 25,
                ),
                // sliver: HomeList(),
              ),
            ],
          ),
          );
  }
}

