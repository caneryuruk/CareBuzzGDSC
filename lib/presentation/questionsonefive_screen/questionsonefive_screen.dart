import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/custom_icon_button.dart';
import 'package:carebuzz/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class QuestionsonefiveScreen extends StatelessWidget {
  QuestionsonefiveScreen({Key? key}) : super(key: key);

  String didYouGetYourCholesterolLevels = "";

  List<String> radioList = ["lbl_yes", "lbl_no"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 41.v),
                child: Column(children: [
                  SizedBox(height: 20.v),
                  Text("Questions", style: CustomTextStyles.titleMediumBold),
                  SizedBox(height: 7.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgAr1707426243,
                      height: 150.v,
                      width: 131.h),
                  SizedBox(height: 80.v),
                  Text("Did you get your cholesterol levels tested?",
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 14.v),
                  _buildDidYouGetYourCholesterolLevels(context),
                  Spacer(),
                  _buildArrowDown(context)
                ]))));
  }

  /// Section Widget
  Widget _buildDidYouGetYourCholesterolLevels(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 4.h, right: 284.h),
            child: Column(children: [
              CustomRadioButton(
                  text: "Yes",
                  value: radioList[0],
                  groupValue: didYouGetYourCholesterolLevels,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    didYouGetYourCholesterolLevels = value;
                  }),
              Padding(
                  padding: EdgeInsets.only(top: 21.v, right: 5.h),
                  child: CustomRadioButton(
                      text: "No",
                      value: radioList[1],
                      groupValue: didYouGetYourCholesterolLevels,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        didYouGetYourCholesterolLevels = value;
                      }))
            ])));
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
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

  /// Navigates to the questionsoneoneScreen when the action is triggered.
  onTapBtnArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionsoneoneScreen);
  }

  /// Navigates to the questionstwothreeScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionstwothreeScreen);
  }
}
