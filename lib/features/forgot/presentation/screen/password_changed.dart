import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../login/presentation/screen/login_screen.dart';
import '../../../welcome/presentation/widgets/button_widgets.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              Image.asset(AppAssets.successMark, width: 100, height: 100),
              SizedBox(height: 2),
              Text(
                "Password Changed!",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: "Urbanist",
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "Your password has been successfully changed. You can now use your new password to log in to your account.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  color: AppColors.grayColor,
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 5),
              ButtonWidgets(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                text: "Back to Login",
                isLogin: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
