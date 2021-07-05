import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage(
      {Key? key,
      required this.padding,
      required this.width,
      required this.height,
      required this.image})
      : super(key: key);
  final String image;
  final double width;
  final double height;
  final double padding;
  @override
  Widget build(BuildContext context) {
    final int? index = null;
    return this.image == index
        ? SizedBox.shrink()
        : Padding(
            padding: EdgeInsets.all(this.padding),
            child: Image.asset(
              this.image,
              height: this.height,
              width: this.width,
              fit: BoxFit.contain,
            ),
          );
  }
}
