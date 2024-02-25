import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/custom_elevated_button.dart';
import 'package:carebuzz/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class FourScreen extends StatelessWidget {
  const FourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 54.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 16.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                              height: 207.v,
                              width: 265.h,
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 34.h),
                                                      child: Text(
                                                          "Let’s get started!",
                                                          style: CustomTextStyles
                                                              .titleLargeInterOnPrimaryBold))),
                                              SizedBox(
                                                  width: 265.h,
                                                  child: Text(
                                                      "Login to enjoy the features we’ve provided, and stay healthy!",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: CustomTextStyles
                                                          .bodyLargeInterGray600
                                                          .copyWith(
                                                              height: 1.50)))
                                            ])),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAr1707426243,
                                        height: 150.v,
                                        width: 131.h,
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(right: 60.h))
                                  ]))),
                      SizedBox(height: 58.v),
                      CustomElevatedButton(
                          text: "Login",
                          margin: EdgeInsets.only(left: 8.h, right: 9.h),
                          onPressed: () {
                            onTapLogin(context);
                          }),
                      SizedBox(height: 16.v),
                      CustomOutlinedButton(
                          text: "Sign Up",
                          margin: EdgeInsets.only(left: 8.h, right: 9.h),
                          buttonStyle: CustomButtonStyles.outlinePrimary,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumInterPrimary,
                          onPressed: () {
                            onTapSignUp(context);
                          })
                    ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
