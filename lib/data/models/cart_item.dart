import 'package:cart/data/models/product_model.dart';

class CartItem {
  late final int quantity;
  final Product? product;
  CartItem({required this.quantity,this.product});

  incrementQuantity() {
    if (quantity >= 10) {
      return quantity = 10;
    } else {
      quantity = (quantity + 1);
    }
  }

  decrementQuantity() {
    if (quantity <= 1) {
      quantity = 1;
    } else {
      quantity = (quantity - 1);
    }
  }
}
