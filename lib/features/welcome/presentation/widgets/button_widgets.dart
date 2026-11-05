import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class ButtonWidgets extends StatelessWidget {
  final String text;
  final bool isLogin;
  final Function() onPressed;
  const ButtonWidgets({
    super.key,
    required this.text,
    this.isLogin = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          //margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isLogin ? AppColors.darkColor : Colors.transparent,
            border: Border.all(color: AppColors.darkColor, width: 1),
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              color: isLogin ? AppColors.whiteColor : AppColors.darkColor,
              fontWeight: FontWeight.w600,
              fontFamily: "Urbanist",
            ),
          ),
        ),
      ),
    );
  }
}
