import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class TextFieldCustom extends StatefulWidget {
  final String textHint;
  final bool isPassword;
  const TextFieldCustom({
    super.key,
    required this.textHint,
    this.isPassword = false,
  });

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword && isObscure,
      style: TextStyle(
        fontSize: 15,
        fontFamily: "Urbanist",
        fontWeight: FontWeight.w500,
        height: 1.25,
        color: AppColors.grayColor,
      ),

      decoration: InputDecoration(
        hintText: widget.textHint,
        filled: true,
        fillColor: Color(0xffF7F8F9),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        hintStyle: TextStyle(
          fontSize: 15,
          fontFamily: "Urbanist",
          fontWeight: FontWeight.w500,
          height: 1.25,
          color: AppColors.grayColor,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  isObscure = !isObscure;
                  setState(() {});
                },
                icon: Icon(
                  isObscure ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
                  color: AppColors.darkGrayColor,
                  size: 22,
                ),
              )
            : null,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 1,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 1,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 1,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 1,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 1,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 1,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
      ),
    );
  }
}
