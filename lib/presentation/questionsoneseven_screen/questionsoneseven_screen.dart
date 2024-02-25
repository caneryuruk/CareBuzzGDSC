import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/custom_icon_button.dart';
import 'package:carebuzz/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class QuestionsonesevenScreen extends StatelessWidget {
  QuestionsonesevenScreen({Key? key}) : super(key: key);

  String haveYouCompletedYourColonCance = "";

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
                  SizedBox(height: 64.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 321.h,
                          margin: EdgeInsets.only(right: 24.h),
                          child: Text(
                              "Have you completed your colon cancer screening test?",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleMedium))),
                  SizedBox(height: 11.v),
                  _buildHaveYouCompletedYourColonCance(context),
                  Spacer(),
                  _buildArrowDown(context)
                ]))));
  }

  /// Section Widget
  Widget _buildHaveYouCompletedYourColonCance(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 280.h),
            child: Column(children: [
              CustomRadioButton(
                  text: "Yes",
                  value: radioList[0],
                  groupValue: haveYouCompletedYourColonCance,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    haveYouCompletedYourColonCance = value;
                  }),
              Padding(
                  padding: EdgeInsets.only(top: 21.v, right: 5.h),
                  child: CustomRadioButton(
                      text: "No",
                      value: radioList[1],
                      groupValue: haveYouCompletedYourColonCance,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        haveYouCompletedYourColonCance = value;
                      }))
            ])));
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
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

  /// Navigates to the questionsoneScreen when the action is triggered.
  onTapBtnArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionsoneScreen);
  }

  /// Navigates to the questionstwotwoScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionstwotwoScreen);
  }
}
