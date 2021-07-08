import 'package:cart/utils/color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton( 
      {Key? key, required this.action, this.label, required this.icon})
      : super(key: key);
  final VoidCallback action;
  final String? label;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: action,
      style: TextButton.styleFrom(
        primary: AppColors.WHITE,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              label!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.DARK,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.LIGHT_GREEN,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Icon(
              icon,
              color: AppColors.WHITE,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
