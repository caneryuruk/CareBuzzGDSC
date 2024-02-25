import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/custom_icon_button.dart';
import 'package:carebuzz/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class QuestionsonetwoScreen extends StatelessWidget {
  QuestionsonetwoScreen({Key? key}) : super(key: key);

  String mammogramDone = "";

  List<String> radioList = ["lbl_yes", "lbl_no"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 41.v),
                child: Column(children: [
                  SizedBox(height: 20.v),
                  Text("Questions", style: CustomTextStyles.titleMediumBold),
                  SizedBox(height: 7.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgAr1707426243,
                      height: 150.v,
                      width: 131.h),
                  SizedBox(height: 80.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Have you had your mammogram done?",
                          style: theme.textTheme.titleMedium)),
                  SizedBox(height: 14.v),
                  _buildMammogramDone(context),
                  Spacer(),
                  _buildSeventyFive(context)
                ]))));
  }

  /// Section Widget
  Widget _buildMammogramDone(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 280.h),
            child: Column(children: [
              CustomRadioButton(
                  text: "Yes",
                  value: radioList[0],
                  groupValue: mammogramDone,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    mammogramDone = value;
                  }),
              Padding(
                  padding: EdgeInsets.only(top: 20.v, right: 5.h),
                  child: CustomRadioButton(
                      text: "No",
                      value: radioList[1],
                      groupValue: mammogramDone,
                      padding: EdgeInsets.symmetric(vertical: 2.v),
                      onChange: (value) {
                        mammogramDone = value;
                      }))
            ])));
  }

  /// Section Widget
  Widget _buildSeventyFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomIconButton(
              height: 58.adaptSize,
              width: 58.adaptSize,
              padding: EdgeInsets.all(16.h),
              onTap: () {
                onTapBtnArrowDown(context);
              },
              child: CustomImageView(imagePath: ImageConstant.imgArrowDown)),
          CustomIconButton(
              height: 58.adaptSize,
              width: 58.adaptSize,
              padding: EdgeInsets.all(16.h),
              onTap: () {
                onTapBtnArrowLeft(context);
              },
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowLeftOnerrorcontainer))
        ]));
  }

  /// Navigates to the questionstwooneScreen when the action is triggered.
  onTapBtnArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionstwooneScreen);
  }

  /// Navigates to the questionsonesixScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionsonesixScreen);
  }
}
