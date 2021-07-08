import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    this.padding,
    required this.width,
    required this.height,
    this.image = '',
  }) : super(key: key);
  final String image;
  final double width;
  final double height;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    final int? index = null;
    return image == index
        ? SizedBox.shrink()
        : Padding(
            padding: EdgeInsets.all(padding!),
            child: Image.asset(
              image,
              height: this.height,
              width: this.width,
              fit: BoxFit.contain,
            ),
          );
  }
}
