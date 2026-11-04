import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_register_app_ui/features/welcome/presentation/widgets/button_widgets.dart';

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
              image: AssetImage("assets/images/img.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 16,
              children: [
                SvgPicture.asset(
                  "assets/images/Branding.svg",
                  width: 150,
                  height: 100,
                ),
                SizedBox(height: 30),
                // button to navigate to login screen
                ButtonWidgets(text: "Login", isLogin: true),
                ButtonWidgets(text: "Register", isLogin: false),
                SizedBox(height: 0),
                TextButton(
                  onPressed: () {},

                  child: Text(
                    "Continue as a guest",
                    style: TextStyle(
                      color: Color(0xff35C2C1),
                      fontFamily: "Urbanist",
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decorationColor: Color(0xff35C2C1),
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
