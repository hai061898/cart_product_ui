class Product {
  final int id;
  final String name;
  final String category;
  final double? price;
  final String image;
  final String description;
  late final bool like;
  Product({
    required this.id,
    this.name = '',
    this.category = '',
    this.image = '',
    this.description = '',
    this.price,
    this.like=false,
  });
}
