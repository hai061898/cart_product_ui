
import 'package:cart/data/json/category_json.dart';
import 'package:cart/data/json/product_json.dart';
import 'package:cart/data/models/cart_item.dart';
import 'package:cart/data/models/category_model.dart';
import 'package:cart/data/models/product_model.dart';

import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class HomeController extends GetxController {
  RxList<Category> category = RxList<Category>([]);
  RxList<Product> products = RxList<Product>([]);
  RxList<CartItem> cartItems = RxList<CartItem>([]);

  int get cartQuantity {
    return cartItems.length;
  }

  loadCategories() async {
    // List<dynamic> dataCategories = await loadJson(
    //   "assets/data/categories.json",
    // );
    category.addAll(categorydata
        .map<Category>((i) => Category(
              key: i["key"],
              name: i["name"],
              color: i["color"],
            ))
        .toList());
    selecategory(category.first);
  }

  selecategory(Category catagories) async {
    productdata
        .where((item) => item["categories"] == catagories.key)
        .map((i) => Product(
              id: i["id"],
              name: i["name"],
              category: i["category"],
              price: i["price"],
              image: i["image"],
            ))
        .toList();
  }
}
