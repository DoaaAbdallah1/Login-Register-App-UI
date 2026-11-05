import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../forgot/presentation/screen/forgot_password.dart';
import '../../../register/presentation/screen/register_screen.dart';
import '../../../welcome/presentation/widgets/button_widgets.dart';
import '../widget/box_custom_facebook.dart';
import '../widget/button_back.dart';
import '../widget/text_field_custom.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                          "Welcome back! Glad to see you, Again!",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                            letterSpacing: -0.01,
                          ),
                        ),

                        Column(
                          children: [
                            TextFieldCustom(textHint: "Enter your email"),
                            SizedBox(height: 20),
                            TextFieldCustom(
                              textHint: "Enter your password",
                              isPassword: true,
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ForgotPasswordScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Urbanist",
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.darkGrayColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        ButtonWidgets(
                          onPressed: () {},
                          text: "Login",
                          isLogin: true,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                color: AppColors.borderColor,
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                child: Text(
                                  "Or Login with",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.darkGrayColor,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 1,
                                color: AppColors.borderColor,
                              ),
                            ),
                          ],
                        ),

                        Row(
                          spacing: 8,
                          children: [
                            Expanded(
                              child: BoxCustomFacebook(
                                pathText: AppAssets.facebookIcon,
                              ),
                            ),
                            Expanded(
                              child: BoxCustomFacebook(
                                pathText: AppAssets.googleIcon,
                              ),
                            ),
                            Expanded(
                              child: BoxCustomFacebook(
                                pathText: AppAssets.appleIcon,
                              ),
                            ),
                          ],
                        ),

                        Spacer(),
                        Center(
                          child: RichText(
                            textAlign: TextAlign.center,

                            text: TextSpan(
                              text: "Don’t have an account? ",

                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w500,
                                color: Color(0xff24282C),
                              ),

                              children: [
                                TextSpan(
                                  text: "Register Now",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              RegisterScreen(),
                                        ),
                                      );
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
