import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/custom_elevated_button.dart';
import 'package:carebuzz/widgets/custom_outlined_button.dart';
import 'package:carebuzz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 31.h, vertical: 59.v),
                            child: Column(children: [
                              Text("Login",
                                  style: CustomTextStyles
                                      .titleMediumInterOnPrimary),
                              SizedBox(height: 10.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgAr1707426243,
                                  height: 150.v,
                                  width: 131.h),
                              SizedBox(height: 7.v),
                              _buildEmailField(context),
                              SizedBox(height: 16.v),
                              _buildPasswordField(context),
                              SizedBox(height: 10.v),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotPassword(context);
                                      },
                                      child: Text("Forgot Password?",
                                          style: CustomTextStyles
                                              .titleSmallInterPrimary))),
                              SizedBox(height: 31.v),
                              _buildLoginButton(context),
                              SizedBox(height: 28.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveanaccount(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Don’t have an account?",
                                            style: CustomTextStyles
                                                .bodyMediumInterff70768415),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "Sign Up",
                                            style: CustomTextStyles
                                                .bodyMediumInterff4590c0)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 26.v),
                              _buildElevenStack(context),
                              _buildSignInWithGoogleButton(context),
                              SizedBox(height: 16.v),
                              _buildSignInWithAppleButton(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return CustomTextFormField(
        controller: emailFieldController,
        hintText: "Enter your email",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v),
        borderDecoration: TextFormFieldStyleHelper.outlineGrayTL24,
        filled: true,
        fillColor: appTheme.gray5003);
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
        controller: passwordFieldController,
        hintText: "Enter your password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 16.v, 23.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgClose24x24,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(vertical: 18.v),
        borderDecoration: TextFormFieldStyleHelper.outlineGrayTL24,
        filled: true,
        fillColor: appTheme.gray5003);
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Login",
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Section Widget
  Widget _buildElevenStack(BuildContext context) {
    return SizedBox(
        height: 36.v,
        width: 327.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 10.v),
                  child: SizedBox(
                      width: 327.h, child: Divider(color: appTheme.gray200)))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 20.v,
                  width: 53.h,
                  decoration: BoxDecoration(
                      color:
                          theme.colorScheme.onErrorContainer.withOpacity(1)))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Text("OR",
                  style: CustomTextStyles.bodyLargeInterBluegray300Regular))
        ]));
  }

  /// Section Widget
  Widget _buildSignInWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign in with Google",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogle,
                height: 20.v,
                width: 19.h)));
  }

  /// Section Widget
  Widget _buildSignInWithAppleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign in with Apple",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgApple, height: 20.v, width: 16.h)));
  }

  /// Navigates to the resetpassswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.resetpassswordScreen);
  }

  /// Navigates to the framecontinueScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.framecontinueScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
