import 'package:cart/data/models/category_model.dart';
import 'package:cart/pages/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'item_categories.dart';

class ListCategories extends StatelessWidget {
  const ListCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Obx(() {
      return SizedBox(
        height: 100,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: 50),
          itemCount: controller.category.length,
          itemBuilder: (_, index) {
            Category categories = controller.category.elementAt(index);
            return Obx(() {
              return ItemCategories(
                categories,
                categories == controller.category,
              );
            });
          },
        ),
      );
    });
  }
}
