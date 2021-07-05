class Product {
  final int id;
  final String name;
  final String category;
  final double price;
  final String image;
  final String description;
  Product({
    required this.id,
    this.name ='',
    this.category='',
    this.image='',
    this.description='',
    required this.price,
  });
}
