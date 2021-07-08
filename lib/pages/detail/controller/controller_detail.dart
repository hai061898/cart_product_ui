import 'package:cart/data/json/product_json.dart';
import 'package:cart/data/models/cart_item.dart';
import 'package:cart/data/models/product_model.dart';
// import 'package:cart/utils/json.dart';
// import 'package:cart/data/models/product_model.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {

  RxList<CartItem> cartItems = RxList<CartItem>([]);
  RxList<Product> products = RxList<Product>([]);
  
  // Rx<Product> _product = Rx<Product>([]);
  // setProduct(Product value) => _product.value = value;

   loadProduct() async {
    try {
      // List<dynamic> data = await loadJson("assets/data/products.json");
      dynamic item = productdata.firstWhere((item) {
        return item["id"].toString() == Get.parameters["id"].toString();
      });
      Product(
        id: item["id"],
        name: item["name"],
        category: item["category"],
        price: item["price"],
        image: item["image"],
        description: item["description"],
      );
    } catch (error) {
      print(error.toString());
    }
  }

  addProduct() {
    try {
      CartItem cartItem =
         cartItems.firstWhere((cartItem) {
        return cartItem.product!.id ==cartItems;
      });
      cartItem.incrementQuantity();
    } catch (error) {
      // cartItems.add(CartItem(
      //   product: this.product,
      //   quantity: 1,
      // ));
    }
    Get.back();
  }




}