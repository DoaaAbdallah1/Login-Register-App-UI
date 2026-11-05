import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../welcome/presentation/widgets/button_widgets.dart';
import '../../../login/presentation/widget/button_back.dart';
import '../../../login/presentation/widget/text_field_custom.dart';
import '../widget/otp_widget.dart';
import 'create_new_password.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

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
                          "OTP Verification",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                            letterSpacing: -0.01,
                          ),
                        ),

                        Text(
                          "Enter the verification code we just sent on your email address.",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: AppColors.grayColor,
                          ),
                        ),

                        OtpTextField(
                          onCompleted: (otp) {
                            print(otp);
                            // Verify OTP
                          },
                        ),
                        //SizedBox(height: 0),
                        ButtonWidgets(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreateNewPassword(),
                              ),
                            );
                          },
                          text: "Verify",
                          isLogin: true,
                        ),

                        Spacer(),
                        Center(
                          child: RichText(
                            textAlign: TextAlign.center,

                            text: TextSpan(
                              text: "Didn’t received code? ",

                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w500,
                                color: Color(0xff24282C),
                              ),

                              children: [
                                TextSpan(
                                  text: "Resend",
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
