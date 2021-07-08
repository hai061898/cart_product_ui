import 'package:cart/data/models/product_model.dart';
import 'package:cart/utils/color.dart';
import 'package:cart/widgets/product_image.dart';
import 'package:flutter/material.dart';

import 'itemAdd.dart';
import 'item_like.dart';

class ListItem extends StatelessWidget {
  final Product product;
  ListItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.WHITE,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 15,
            color: AppColors.SHADOW,
            offset: Offset(6, 10),
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Stack(
        
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 25,
              bottom: 15,
              left: 25,
              right: 15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ProductImage(
                  image: product.image,
                  padding: 0,
                  width: 115,
                  height: 115,
                  
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.DARK,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5),
                    Text(
                      product.price.toString(),
                      style: TextStyle(
                        fontSize: 21,
                        color: AppColors.LIGHT_GREEN,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ItemAdd(product),
          ItemLike(product),
        ],
      ),
    );
  }
}