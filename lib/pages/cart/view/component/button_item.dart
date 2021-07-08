import 'package:cart/utils/color.dart';
import 'package:flutter/material.dart';

class CartItemButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback action;
  CartItemButton(this.icon, this.action);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 32,
      child: TextButton(
        onPressed: action,
       style: TextButton.styleFrom(
          primary: AppColors.WHITE,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
       ),
        child: Icon(
          icon,
          color: AppColors.GREEN,
          size: 16,
        ),
      ),
    );
  }
}