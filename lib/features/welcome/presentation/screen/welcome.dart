import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../login/presentation/screen/login_screen.dart';
import '../../../register/presentation/screen/register_screen.dart';
import '../widgets/button_widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 16,
              children: [
                SvgPicture.asset(AppAssets.logoSVG, width: 150, height: 100),
                SizedBox(height: 30),
                // button to navigate to login screen
                ButtonWidgets(
                  text: "Login",
                  isLogin: true,
                  onPressed: () {
                    // navigate to login screen
                    Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen(),));
                  },
                ),
                ButtonWidgets(
                  text: "Register",
                  isLogin: false,
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => RegisterScreen(),));
                  },
                ),
                SizedBox(height: 0),
                TextButton(
                  onPressed: () {},

                  child: Text(
                    "Continue as a guest",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontFamily: "Urbanist",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decorationColor: AppColors.primaryColor,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
