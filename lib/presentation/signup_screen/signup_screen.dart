import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/app_bar/appbar_leading_image.dart';
import 'package:carebuzz/widgets/app_bar/appbar_subtitle.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carebuzz/widgets/custom_checkbox_button.dart';
import 'package:carebuzz/widgets/custom_elevated_button.dart';
import 'package:carebuzz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  bool agreeCheckBox = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 31.h),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgAr1707426243,
                                  height: 150.v,
                                  width: 131.h),
                              _buildNameEditText(context),
                              SizedBox(height: 16.v),
                              _buildEmailEditText(context),
                              SizedBox(height: 16.v),
                              _buildPasswordEditText(context),
                              SizedBox(height: 16.v),
                              _buildAgreeCheckBox(context),
                              SizedBox(height: 34.v),
                              _buildSignUpButton(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 63.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 39.h, top: 16.v, bottom: 15.v)),
        centerTitle: true,
        title: AppbarSubtitle(text: "Sign Up"));
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return CustomTextFormField(
        controller: nameEditTextController,
        hintText: "Enter your name",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLock,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        contentPadding: EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v),
        borderDecoration: TextFormFieldStyleHelper.outlineGrayTL24,
        filled: true,
        fillColor: appTheme.gray5003);
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
        controller: emailEditTextController,
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
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
        controller: passwordEditTextController,
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
  Widget _buildAgreeCheckBox(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: CustomCheckboxButton(
            text: "I agree to the CareBuzz Terms of Service and Privacy Policy",
            isExpandedText: true,
            value: agreeCheckBox,
            onChange: (value) {
              agreeCheckBox = value;
            }));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        onPressed: () {
          onTapSignUpButton(context);
        });
  }

  /// Navigates to the questionsonefourScreen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionsonefourScreen);
  }
}
