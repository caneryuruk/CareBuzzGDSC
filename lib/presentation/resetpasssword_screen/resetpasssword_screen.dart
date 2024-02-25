import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/app_bar/appbar_leading_image.dart';
import 'package:carebuzz/widgets/app_bar/appbar_subtitle.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carebuzz/widgets/custom_elevated_button.dart';
import 'package:carebuzz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:carebuzz/presentation/resetpassswordsuccess_dialog/resetpassswordsuccess_dialog.dart';

// ignore_for_file: must_be_immutable
class ResetpassswordScreen extends StatelessWidget {
  ResetpassswordScreen({Key? key}) : super(key: key);

  TextEditingController emailEditTextController = TextEditingController();

  TextEditingController newPasswordEditTextController = TextEditingController();

  TextEditingController confirmPasswordEditTextController =
      TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 31.h, vertical: 173.v),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildEmailEditText(context),
                                  SizedBox(height: 16.v),
                                  _buildNewPasswordEditText(context),
                                  SizedBox(height: 16.v),
                                  _buildConfirmPasswordEditText(context),
                                  Spacer(),
                                  SizedBox(height: 32.v),
                                  _buildSignUpButton(context)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 63.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 39.h, top: 17.v, bottom: 14.v)),
        centerTitle: true,
        title: AppbarSubtitle(text: "Reset Password"));
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
        borderDecoration: TextFormFieldStyleHelper.outlineGray,
        filled: true,
        fillColor: appTheme.gray5005);
  }

  /// Section Widget
  Widget _buildNewPasswordEditText(BuildContext context) {
    return CustomTextFormField(
        controller: newPasswordEditTextController,
        hintText: "Enter your new password",
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(24.h, 16.v, 16.h, 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 56.v),
        suffix: Container(
            margin: EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgClose24x24,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(vertical: 18.v),
        borderDecoration: TextFormFieldStyleHelper.outlineGray,
        filled: true,
        fillColor: appTheme.gray5005);
  }

  /// Section Widget
  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return CustomTextFormField(
        controller: confirmPasswordEditTextController,
        hintText: "Enter your new password",
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
            margin: EdgeInsets.symmetric(horizontal: 23.h, vertical: 16.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgClose24x24,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(vertical: 18.v),
        borderDecoration: TextFormFieldStyleHelper.outlineGray,
        filled: true,
        fillColor: appTheme.gray5005);
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        onPressed: () {
          onTapSignUpButton(context);
        });
  }

  /// Displays a dialog with the [ResetpassswordsuccessDialog] content.
  onTapSignUpButton(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: ResetpassswordsuccessDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
