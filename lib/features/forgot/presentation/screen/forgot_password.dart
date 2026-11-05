import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import 'otp_verification.dart';
import '../../../login/presentation/widget/button_back.dart';
import '../../../login/presentation/widget/text_field_custom.dart';
import '../../../welcome/presentation/widgets/button_widgets.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                            letterSpacing: -0.01,
                          ),
                        ),

                        Text(
                          "Don't worry! It occurs. Please enter the email address linked with your account.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: AppColors.grayColor,
                          ),
                        ),

                        TextFieldCustom(textHint: "Enter your email"),

                        ButtonWidgets(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtpVerification(),
                              ),
                            );
                          },
                          text: "Send Code",
                          isLogin: true,
                        ),

                        Spacer(),
                        Center(
                          child: RichText(
                            textAlign: TextAlign.center,

                            text: TextSpan(
                              text: "Remember Password? ",

                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w500,
                                color: Color(0xff24282C),
                              ),

                              children: [
                                TextSpan(
                                  text: "Login",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pop(context);
                                    },
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "Urbanist",
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
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
