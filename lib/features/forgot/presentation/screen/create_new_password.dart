import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../login/presentation/widget/button_back.dart';
import '../../../login/presentation/widget/text_field_custom.dart';
import '../../../welcome/presentation/widgets/button_widgets.dart';
import 'password_changed.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 25,
                      children: [
                        ButtonBack(),
                        Text(
                          "Create new password",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                            letterSpacing: -0.01,
                          ),
                        ),

                        Text(
                          "Your new password must be unique from those previously used.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: AppColors.grayColor,
                          ),
                        ),
                        TextFieldCustom(textHint: "New Password"),
                        TextFieldCustom(textHint: "Confirm Password"),

                        ButtonWidgets(
                          onPressed: () {
                          
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PasswordChanged(),
                              ),
                            );
                          },
                          text: "Reset Password",
                          isLogin: true,
                        ),
],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
    
  }
}