import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../login/presentation/screen/login_screen.dart';
import '../../../login/presentation/widget/box_custom_facebook.dart';
import '../../../login/presentation/widget/button_back.dart';
import '../../../login/presentation/widget/text_field_custom.dart';
import '../../../welcome/presentation/widgets/button_widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                          "Hello! Register to get started",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                            letterSpacing: -0.01,
                          ),
                        ),

                        Column(
                          spacing: 20,
                          children: [
                            TextFieldCustom(textHint: "Username"),
                            TextFieldCustom(textHint: "Email"),
                            TextFieldCustom(textHint: "Password"),
                            TextFieldCustom(textHint: "Confirm password"),
                          ],
                        ),

                        ButtonWidgets(
                          onPressed: () {},
                          text: "Register",
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
                                  "Or Register with",
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
                              text: "Already have an account? ",

                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w500,
                                color: Color(0xff24282C),
                              ),

                              children: [
                                TextSpan(
                                  text: "Login Now",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => LoginScreen(),
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
    )
    ;
  }
}
