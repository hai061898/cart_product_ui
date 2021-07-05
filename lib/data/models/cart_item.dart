import 'package:cart/data/models/product_model.dart';

class CartItem {
  final int? quantity;
  final Product product;
  CartItem({required this.quantity, required this.product});

  //   incrementQuantity() {
  //   if (this.quantity >= 10) {
  //     this.quantity = 10;
  //   } else {
  //     this.quantity += 1;
  //   }
  // }

  // decrementQuantity() {
  //   if (this.quantity <= 1) {
  //     this.quantity = 1;
  //   } else {
  //     this.quantity -= 1;
  //   }
  // }
}
