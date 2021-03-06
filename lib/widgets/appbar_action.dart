import 'package:cart/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key,
       required this.action ,
      required this.icon,
      required this.quantity})
      : super(key: key);
  final VoidCallback action;
  final IconData icon;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: SizedBox(
        width: 50,
        height: 50,
        child: TextButton(
          onPressed: action,
          style: TextButton.styleFrom(
            primary: AppColors.WHITE,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Stack(
            children: [
              Icon(
                icon,
                size: 21,
                color: AppColors.GREEN,
              ),
              if (quantity != 0)
                Visibility(
                  child: Positioned(
                    top: -5,
                    right: -10,
                    child: Container(
                      width: 15,
                      height: 15,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: AppColors.DARK,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(
                        quantity.toString(),
                        style: TextStyle(
                          fontSize: 11,
                          color: AppColors.WHITE,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
                else Container(),
            ],
          ),
        ),
      ),
    );
  }
}
