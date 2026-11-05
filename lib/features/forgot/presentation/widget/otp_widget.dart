
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/constants/app_colors.dart';

class OtpTextField extends StatefulWidget {
  final ValueChanged<String>? onCompleted;

  const OtpTextField({
    super.key,
    this.onCompleted,
  });

  @override
  State<OtpTextField> createState() => _OtpTextFieldState();
}

class _OtpTextFieldState extends State<OtpTextField> {
  late final List<TextEditingController> controllers;
  late final List<FocusNode> focusNodes;

  @override
  void initState() {
    super.initState();

    controllers = List.generate(
      4,
      (index) => TextEditingController(),
    );

    focusNodes = List.generate(
      4,
      (index) => FocusNode(),
    );
  }

  @override
  void dispose() {
    for (final controller in controllers) {
      controller.dispose();
    }

    for (final node in focusNodes) {
      node.dispose();
    }

    super.dispose();
  }

  void onChanged(String value, int index) {
    if (value.isNotEmpty) {
      if (index < 3) {
        focusNodes[index + 1].requestFocus();
      } else {
        focusNodes[index].unfocus();

        final otp = controllers.map((e) => e.text).join();

        widget.onCompleted?.call(otp);
      }
    } else {
      if (index > 0) {
        focusNodes[index - 1].requestFocus();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(4, (index) {
        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: index == 3 ? 0 : 12,
            ),
            child: TextField(
              controller: controllers[index],
              focusNode: focusNodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 1,
              style: TextStyle(
                fontSize: 22,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.bold,
                color: AppColors.darkColor,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              onChanged: (value) => onChanged(value, index),
              decoration: InputDecoration(
                counterText: '',
                filled: true,
                fillColor: const Color(0xffF7F8F9),

                contentPadding: const EdgeInsets.symmetric(
                  vertical: 18,
                ),

                // Default border: Gray
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColors.borderColor,
                    width: 1,
                  ),
                ),

                // Focused border: Primary
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColors.primaryColor,
                    width: 1.5,
                  ),
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColors.borderColor,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
