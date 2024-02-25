import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/custom_icon_button.dart';
import 'package:carebuzz/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class QuestionstwotwoScreen extends StatelessWidget {
  QuestionstwotwoScreen({Key? key}) : super(key: key);

  String haveYouCompletedYourColonCance = "";

  List<String> radioList = ["lbl_yes", "lbl_no"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 41.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.v),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Questions",
                              style: CustomTextStyles.titleMediumBold)),
                      SizedBox(height: 7.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgAr1707426243,
                          height: 150.v,
                          width: 131.h,
                          alignment: Alignment.center),
                      SizedBox(height: 64.v),
                      Container(
                          width: 321.h,
                          margin: EdgeInsets.only(right: 24.h),
                          child: Text(
                              "Have you completed your colon cancer screening test?",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleMedium)),
                      SizedBox(height: 11.v),
                      _buildHaveYouCompletedYourColonCance(context),
                      SizedBox(height: 36.v),
                      _buildComponentOne(context),
                      SizedBox(height: 84.v),
                      _buildArrowDown(context)
                    ]))));
  }

  /// Section Widget
  Widget _buildHaveYouCompletedYourColonCance(BuildContext context) {
    return Padding(
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
              padding: EdgeInsets.only(top: 20.v, right: 5.h),
              child: CustomRadioButton(
                  text: "No",
                  value: radioList[1],
                  groupValue: haveYouCompletedYourColonCance,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  onChange: (value) {
                    haveYouCompletedYourColonCance = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildComponentOne(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20.v),
        child: Column(children: [
          SizedBox(height: 5.v),
          Text("Date", style: CustomTextStyles.titleMediumInter),
          SizedBox(height: 2.v),
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
                              theme.colorScheme.onErrorContainer.withOpacity(1),
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
                              theme.colorScheme.onErrorContainer.withOpacity(1),
                              theme.colorScheme.onErrorContainer
                            ])))),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        height: 91.v,
                        width: 342.h,
                        margin: EdgeInsets.only(bottom: 11.v),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 36.v,
                                  width: 342.h,
                                  margin: EdgeInsets.only(top: 20.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.gray10001,
                                      border: Border(
                                          top: BorderSide(
                                              color: appTheme.blueGray100,
                                              width: 1.h),
                                          bottom: BorderSide(
                                              color: appTheme.blueGray100,
                                              width: 1.h))))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 30.h, right: 24.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(children: [
                                          Text("May",
                                              style:
                                                  theme.textTheme.labelLarge),
                                          SizedBox(height: 13.v),
                                          Text("June",
                                              style:
                                                  theme.textTheme.labelLarge),
                                          SizedBox(height: 16.v),
                                          Text("July",
                                              style:
                                                  theme.textTheme.labelLarge),
                                          SizedBox(height: 13.v),
                                          Text("August",
                                              textAlign: TextAlign.center,
                                              style: theme.textTheme.labelLarge)
                                        ]),
                                        Spacer(flex: 48),
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Column(children: [
                                              Text("08",
                                                  style: theme
                                                      .textTheme.labelLarge),
                                              SizedBox(height: 14.v),
                                              Text("09",
                                                  style: theme
                                                      .textTheme.labelLarge),
                                              SizedBox(height: 15.v),
                                              Text("10",
                                                  style: theme
                                                      .textTheme.labelLarge),
                                              SizedBox(height: 14.v),
                                              Text("11",
                                                  textAlign: TextAlign.center,
                                                  style: theme
                                                      .textTheme.labelLarge)
                                            ])),
                                        Spacer(flex: 51),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 2.v, bottom: 14.v),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 1.h),
                                                      child: Text("2021",
                                                          style: theme.textTheme
                                                              .labelLarge)),
                                                  SizedBox(height: 15.v),
                                                  Text("2022",
                                                      style: theme.textTheme
                                                          .labelLarge),
                                                  SizedBox(height: 15.v),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text("2023",
                                                          style: theme.textTheme
                                                              .labelLarge))
                                                ]))
                                      ])))
                        ])))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIconButton(
                      height: 58.adaptSize,
                      width: 58.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      onTap: () {
                        onTapBtnArrowDown(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowDown)),
                  CustomIconButton(
                      height: 58.adaptSize,
                      width: 58.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      onTap: () {
                        onTapBtnArrowLeft(context);
                      },
                      child: CustomImageView(
                          imagePath:
                              ImageConstant.imgArrowLeftOnerrorcontainer))
                ])));
  }

  /// Navigates to the questionsonesevenScreen when the action is triggered.
  onTapBtnArrowDown(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionsonesevenScreen);
  }

  /// Navigates to the questionsoneoneScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionsoneoneScreen);
  }
}
