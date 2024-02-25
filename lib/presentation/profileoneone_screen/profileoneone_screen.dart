import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/app_bar/appbar_leading_image.dart';
import 'package:carebuzz/widgets/app_bar/appbar_title.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carebuzz/widgets/custom_elevated_button.dart';
import 'package:carebuzz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileoneoneScreen extends StatelessWidget {
  ProfileoneoneScreen({Key? key}) : super(key: key);

  TextEditingController enterHereController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController enterHereController1 = TextEditingController();

  TextEditingController enterHereController2 = TextEditingController();

  TextEditingController enterHereController3 = TextEditingController();

  TextEditingController enterHereController4 = TextEditingController();

  TextEditingController birthDayValueController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 17.v),
                    child: Column(children: [
                      _buildBigOutline(context),
                      SizedBox(height: 19.v),
                      _buildBigOutline1(context),
                      SizedBox(height: 18.v),
                      _buildGendervalue(context),
                      SizedBox(height: 17.v),
                      _buildHeightvalue(context),
                      SizedBox(height: 19.v),
                      _buildBirthDayValue(context),
                      SizedBox(height: 80.v),
                      _buildOKAY(context)
                    ])))));
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
  Widget _buildEnterHere(BuildContext context) {
    return CustomTextFormField(
        width: 342.h,
        controller: enterHereController,
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
          _buildEnterHere(context)
        ]));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        width: 342.h,
        controller: emailController,
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
          _buildEmail(context)
        ]));
  }

  /// Section Widget
  Widget _buildEnterHere1(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: enterHereController1,
        hintText: "Gender",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildEnterHere2(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: enterHereController2,
        hintText: "Blood Type",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildGendervalue(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                _buildEnterHere1(context)
              ])),
          Container(
              height: 50.v,
              width: 163.h,
              margin: EdgeInsets.only(left: 16.h),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                        child: Text("A+",
                            style: CustomTextStyles.bodyMediumGray90002))),
                _buildEnterHere2(context)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildEnterHere3(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: enterHereController3,
        hintText: "Weight",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildEnterHere4(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: enterHereController4,
        hintText: "Height",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildHeightvalue(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                _buildEnterHere3(context)
              ])),
          Container(
              height: 50.v,
              width: 163.h,
              margin: EdgeInsets.only(left: 16.h),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                        child: Text("180",
                            style: CustomTextStyles.bodyMediumGray90002))),
                _buildEnterHere4(context)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildBirthDayValue(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: CustomTextFormField(
            width: 163.h,
            controller: birthDayValueController,
            hintText: "Birth Day",
            textInputAction: TextInputAction.done,
            alignment: Alignment.centerLeft));
  }

  /// Section Widget
  Widget _buildOkay(BuildContext context) {
    return CustomElevatedButton(
        height: 51.v,
        width: 200.h,
        text: "OKAY",
        buttonStyle: CustomButtonStyles.fillPrimaryTL24,
        buttonTextStyle: CustomTextStyles.titleMediumInterOnErrorContainer16,
        onPressed: () {
          onTapOkay(context);
        });
  }

  /// Section Widget
  Widget _buildOKAY(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 18.v),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL32),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 20.v),
              decoration: AppDecoration.white,
              child: Column(children: [
                SizedBox(height: 6.v),
                Text("Select Your Birthday",
                    style: CustomTextStyles.titleMediumInter),
                SizedBox(
                    height: 129.v,
                    width: 342.h,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              height: 46.v,
                              width: 342.h,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment(0.5, 0),
                                      end: Alignment(0.5, 1),
                                      colors: [
                                    theme.colorScheme.onErrorContainer
                                        .withOpacity(1),
                                    theme.colorScheme.onErrorContainer,
                                    appTheme.gray3003d
                                  ])))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              height: 46.v,
                              width: 342.h,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment(0.5, 0),
                                      end: Alignment(0.5, 1),
                                      colors: [
                                    theme.colorScheme.onErrorContainer
                                        .withOpacity(0.2),
                                    theme.colorScheme.onErrorContainer
                                        .withOpacity(1),
                                    theme.colorScheme.onErrorContainer
                                  ])))),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 11.v),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 38.h, right: 26.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 2.v),
                                                  child: Text("May",
                                                      style: theme.textTheme
                                                          .labelLarge)),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 2.v),
                                                  child: Text("08",
                                                      style: theme.textTheme
                                                          .labelLarge)),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 2.v),
                                                  child: Text("2021",
                                                      style: theme.textTheme
                                                          .labelLarge))
                                            ])),
                                    SizedBox(height: 3.v),
                                    SizedBox(
                                        height: 36.v,
                                        width: 342.h,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: 36.v,
                                                      width: 342.h,
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .gray10001,
                                                          border: Border(
                                                              top: BorderSide(
                                                                  color: appTheme
                                                                      .blueGray100,
                                                                  width: 1.h),
                                                              bottom: BorderSide(
                                                                  color: appTheme
                                                                      .blueGray100,
                                                                  width:
                                                                      1.h))))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              36.h,
                                                              8.v,
                                                              25.h,
                                                              8.v),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        bottom: 3
                                                                            .v),
                                                                child: Text(
                                                                    "June",
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 3
                                                                            .v),
                                                                child: Text(
                                                                    "09",
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 3
                                                                            .v),
                                                                child: Text(
                                                                    "2022",
                                                                    style: theme
                                                                        .textTheme
                                                                        .labelLarge))
                                                          ])))
                                            ])),
                                    SizedBox(height: 2.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 38.h, right: 24.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 2.v),
                                                  child: Text("July",
                                                      style: theme.textTheme
                                                          .labelLarge)),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 2.v),
                                                  child: Text("10",
                                                      style: theme.textTheme
                                                          .labelLarge)),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 2.v),
                                                  child: Text("2023",
                                                      style: theme.textTheme
                                                          .labelLarge))
                                            ])),
                                    SizedBox(height: 10.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 30.h),
                                            child: Text("August",
                                                textAlign: TextAlign.center,
                                                style: theme
                                                    .textTheme.labelLarge))),
                                    Text("11",
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.labelLarge)
                                  ])))
                    ]))
              ])),
          SizedBox(height: 11.v),
          _buildOkay(context),
          SizedBox(height: 91.v)
        ]));
  }

  /// Navigates to the profileonetwoScreen when the action is triggered.
  onTapOkay(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileonetwoScreen);
  }
}
