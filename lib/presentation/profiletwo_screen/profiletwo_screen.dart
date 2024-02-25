import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/app_bar/appbar_leading_image.dart';
import 'package:carebuzz/widgets/app_bar/appbar_title.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carebuzz/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfiletwoScreen extends StatelessWidget {
  ProfiletwoScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  bool isSelectedSwitch4 = false;

  bool isSelectedSwitch5 = false;

  bool isSelectedSwitch6 = false;

  bool isSelectedSwitch7 = false;

  bool isSelectedSwitch8 = false;

  bool isSelectedSwitch9 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 21.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Common",
                              style: CustomTextStyles.titleMediumPoppins)),
                      SizedBox(height: 12.v),
                      _buildGeneralNotificationRow1(context),
                      SizedBox(height: 13.v),
                      _buildGeneralNotificationRow2(context),
                      SizedBox(height: 14.v),
                      _buildGeneralNotificationRow3(context),
                      SizedBox(height: 26.v),
                      Divider(indent: 1.h),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("System & services update",
                              style: CustomTextStyles.titleMediumPoppins)),
                      SizedBox(height: 14.v),
                      _buildGeneralNotificationRow4(context),
                      SizedBox(height: 12.v),
                      _buildGeneralNotificationRow5(context),
                      SizedBox(height: 12.v),
                      _buildGeneralNotificationRow6(context),
                      SizedBox(height: 12.v),
                      _buildGeneralNotificationRow7(context),
                      SizedBox(height: 12.v),
                      _buildGeneralNotificationRow8(context),
                      SizedBox(height: 27.v),
                      Divider(indent: 1.h),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Others",
                              style: CustomTextStyles.titleMediumPoppins)),
                      SizedBox(height: 7.v),
                      _buildGeneralNotificationRow9(context),
                      SizedBox(height: 12.v),
                      _buildGeneralNotificationRow10(context),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 24.h, top: 18.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Notifications"));
  }

  /// Section Widget
  Widget _buildGeneralNotificationRow1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Text("General Notification",
                  style: theme.textTheme.bodyMedium)),
          CustomSwitch(
              value: isSelectedSwitch,
              onChange: (value) {
                isSelectedSwitch = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildGeneralNotificationRow2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Text("Sound", style: theme.textTheme.bodyMedium)),
          CustomSwitch(
              value: isSelectedSwitch1,
              onChange: (value) {
                isSelectedSwitch1 = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildGeneralNotificationRow3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Text("Vibrate", style: theme.textTheme.bodyMedium)),
          CustomSwitch(
              value: isSelectedSwitch2,
              onChange: (value) {
                isSelectedSwitch2 = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildGeneralNotificationRow4(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("App updates", style: theme.textTheme.bodyMedium)),
          CustomSwitch(
              value: isSelectedSwitch3,
              onChange: (value) {
                isSelectedSwitch3 = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildGeneralNotificationRow5(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Text("Bill Reminder", style: theme.textTheme.bodyMedium)),
          CustomSwitch(
              value: isSelectedSwitch4,
              onChange: (value) {
                isSelectedSwitch4 = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildGeneralNotificationRow6(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Text("Promotion", style: theme.textTheme.bodyMedium)),
          CustomSwitch(
              value: isSelectedSwitch5,
              onChange: (value) {
                isSelectedSwitch5 = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildGeneralNotificationRow7(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child:
                  Text("Discount Avaiable", style: theme.textTheme.bodyMedium)),
          CustomSwitch(
              value: isSelectedSwitch6,
              onChange: (value) {
                isSelectedSwitch6 = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildGeneralNotificationRow8(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child:
                  Text("Payment Request", style: theme.textTheme.bodyMedium)),
          CustomSwitch(
              value: isSelectedSwitch7,
              onChange: (value) {
                isSelectedSwitch7 = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildGeneralNotificationRow9(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: Text("New Service Available",
                  style: theme.textTheme.bodyMedium)),
          CustomSwitch(
              value: isSelectedSwitch8,
              onChange: (value) {
                isSelectedSwitch8 = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildGeneralNotificationRow10(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("New Tips Available",
                  style: theme.textTheme.bodyMedium)),
          CustomSwitch(
              value: isSelectedSwitch9,
              onChange: (value) {
                isSelectedSwitch9 = value;
              })
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
