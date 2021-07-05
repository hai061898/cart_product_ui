import 'package:cart/utils/color.dart';
import 'package:flutter/material.dart';

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({
    Key? key,
    required this.title,
    this.height = 120,
    required this.actions,
    required this.leadings,
  }) : super(key: key);
  final String title;
  final double height;
  final List<Widget> leadings;
  final List<Widget> actions;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60.0),
      child: Container(
        color: Colors.transparent,
        alignment: Alignment.center,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      left: 25,
                      top: 5,
                      bottom: 5,
                      child: Row(
                        children: leadings,
                      ),
                    ),
                    Center(
                      child: Text(
                        this.title,
                        style: TextStyle(
                          color: AppColors.DARK,
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 25,
                      top: 5,
                      bottom: 5,
                      child: Row(
                        children: actions,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
