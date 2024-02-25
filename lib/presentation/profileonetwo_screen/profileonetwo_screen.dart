import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/app_bar/appbar_leading_image.dart';
import 'package:carebuzz/widgets/app_bar/appbar_title.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carebuzz/widgets/custom_elevated_button.dart';
import 'package:carebuzz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileonetwoScreen extends StatelessWidget {
  ProfileonetwoScreen({Key? key}) : super(key: key);

  TextEditingController fullNameInputController = TextEditingController();

  TextEditingController emailInputController = TextEditingController();

  TextEditingController genderInputController = TextEditingController();

  TextEditingController bloodTypeInputController = TextEditingController();

  TextEditingController weightInputController = TextEditingController();

  TextEditingController weightInput2Controller = TextEditingController();

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
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 17.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildBigOutline(context),
                                  SizedBox(height: 19.v),
                                  _buildBigOutline1(context),
                                  SizedBox(height: 18.v),
                                  _buildGendervalue(context),
                                  SizedBox(height: 17.v),
                                  _buildWeightvalue(context),
                                  SizedBox(height: 19.v),
                                  Container(
                                      width: 163.h,
                                      margin: EdgeInsets.only(right: 179.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.h, vertical: 7.v),
                                      decoration: AppDecoration.outlineGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Birth Day",
                                                style:
                                                    theme.textTheme.bodySmall),
                                            SizedBox(height: 4.v),
                                            Text("09/06/2022",
                                                style: CustomTextStyles
                                                    .bodyMediumGray90002)
                                          ])),
                                  SizedBox(height: 40.v),
                                  _buildSubmitButton(context),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 34.h, top: 13.v, bottom: 18.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Edit profile"));
  }

  /// Section Widget
  Widget _buildFullNameInput(BuildContext context) {
    return CustomTextFormField(
        width: 342.h,
        controller: fullNameInputController,
        hintText: "Full name",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildBigOutline(BuildContext context) {
    return SizedBox(
        height: 50.v,
        width: 342.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                  child: Text("Puerto Rico",
                      style: CustomTextStyles.bodyMediumGray90002))),
          _buildFullNameInput(context)
        ]));
  }

  /// Section Widget
  Widget _buildEmailInput(BuildContext context) {
    return CustomTextFormField(
        width: 342.h,
        controller: emailInputController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildBigOutline1(BuildContext context) {
    return SizedBox(
        height: 50.v,
        width: 342.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 7.v),
                  child: Text("youremail@domain.com",
                      style: CustomTextStyles.bodyMediumGray90002))),
          _buildEmailInput(context)
        ]));
  }

  /// Section Widget
  Widget _buildGenderInput(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: genderInputController,
        hintText: "Gender",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildBloodTypeInput(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: bloodTypeInputController,
        hintText: "Blood Type",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildGendervalue(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 50.v,
          width: 163.h,
          margin: EdgeInsets.only(top: 1.v),
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                    child: Text("Female",
                        style: CustomTextStyles.bodyMediumGray90002))),
            _buildGenderInput(context)
          ])),
      SizedBox(
          height: 50.v,
          width: 163.h,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                    child: Text("A+",
                        style: CustomTextStyles.bodyMediumGray90002))),
            _buildBloodTypeInput(context)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildWeightInput(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: weightInputController,
        hintText: "Weight",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildWeightInput2(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: weightInput2Controller,
        hintText: "Height",
        textInputAction: TextInputAction.done,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildWeightvalue(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 50.v,
          width: 163.h,
          margin: EdgeInsets.only(top: 2.v),
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                    child: Text("80",
                        style: CustomTextStyles.bodyMediumGray90002))),
            _buildWeightInput(context)
          ])),
      SizedBox(
          height: 50.v,
          width: 163.h,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                    child: Text("180",
                        style: CustomTextStyles.bodyMediumGray90002))),
            _buildWeightInput2(context)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "submit".toUpperCase(),
        buttonStyle: CustomButtonStyles.fillPrimaryTL20,
        buttonTextStyle: CustomTextStyles.titleMediumGray5005,
        onPressed: () {
          onTapSubmitButton(context);
        });
  }

  /// Navigates to the profileZeroScreen when the action is triggered.
  onTapSubmitButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileZeroScreen);
  }
}
