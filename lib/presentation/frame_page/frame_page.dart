import '../frame_page/widgets/doctorprofile_item_widget.dart';
import '../frame_page/widgets/frameeight_item_widget.dart';
import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:carebuzz/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carebuzz/widgets/custom_drop_down.dart';
import 'package:carebuzz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:carebuzz/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class FramePage extends StatelessWidget {
  FramePage({Key? key}) : super(key: key);  

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];
  
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.white,
                child: Column(children: [
                  _buildAppBar(context),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 626.v,
                              width: 367.h,
                              margin: EdgeInsets.only(left: 23.h),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            margin:
                                                EdgeInsets.only(right: 23.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 12.h),
                                            decoration:
                                                AppDecoration.outlineBlack,
                                            child: _buildStartUsingCareBuzz(
                                                context))),
                                    _buildMyFamily(context),
                                    _buildRecentEvents(context)
                                  ]))))
                ])),
                ));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 55.v),
        decoration: AppDecoration.gradientBlueToGray
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomAppBar(
              height: 23.v,
              leadingWidth: 53.h,
              leading: AppbarLeadingImageOne(
                  imagePath: ImageConstant.imgTelevision,
                  margin: EdgeInsets.only(left: 30.h)),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgLockBlack900,
                    margin:
                        EdgeInsets.only(left: 37.h, right: 37.h, bottom: 1.v),
                    onTap: () {
                      onTapLock(context);
                    })
              ]),
          SizedBox(height: 12.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 37.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          SizedBox(
                              width: 162.h,
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Welcome\n",
                                        style: CustomTextStyles
                                            .labelLargeKarlaffffffff),
                                    TextSpan(
                                        text: "Robin Stewart",
                                        style: theme.textTheme.headlineSmall)
                                  ]),
                                  textAlign: TextAlign.left)),
                          SizedBox(height: 5.v),
                          Row(children: [
                            SizedBox(
                                width: 35.h,
                                child: Text("Age\n38 yrs",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .labelLargeKarlaOnErrorContainer_1
                                        .copyWith(height: 1.50))),
                            Container(
                                width: 38.h,
                                margin: EdgeInsets.only(left: 15.h),
                                child: Text("Height\n180cm",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .labelLargeKarlaOnErrorContainer
                                        .copyWith(height: 1.50))),
                            Container(
                                width: 41.h,
                                margin: EdgeInsets.only(left: 15.h),
                                child: Text("Weight\n80",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .labelLargeKarlaOnErrorContainer
                                        .copyWith(height: 1.50))),
                            Container(
                                width: 61.h,
                                margin: EdgeInsets.only(left: 15.h),
                                child: Text("Blood Type\nA Rh+",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .labelLargeKarlaOnErrorContainer
                                        .copyWith(height: 1.50)))
                          ])
                        ])),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse145,
                        height: 75.adaptSize,
                        width: 75.adaptSize,
                        radius: BorderRadius.circular(37.h),
                        margin: EdgeInsets.only(left: 18.h, bottom: 9.v))
                  ])),
          SizedBox(height: 26.v)
        ]));
  }

  /// Section Widget
  Widget _buildStartUsingCareBuzz(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 43.h, vertical: 35.v),
        decoration: AppDecoration.fillBlue
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("Start using CareBuzz",
              style: CustomTextStyles.titleMediumKarlaGray900),
          SizedBox(height: 9.v),
          SizedBox(
              width: 231.h,
              child: Text(
                  "Get vital information in an intuitive way required for better health & lifestyle of patients.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmallKarlaGray900
                      .copyWith(height: 1.10))),
          SizedBox(height: 15.v),
          CustomElevatedButton(
              height: 30.v,
              text: "Create New Event",
              margin: EdgeInsets.symmetric(horizontal: 21.h),
              buttonStyle: CustomButtonStyles.fillTeal,
              buttonTextStyle:
                  CustomTextStyles.titleMediumKarlaOnErrorContainer,
              onPressed: () {
                onTapCreateNewEvent(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildMyFamily(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 2.h, bottom: 80.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 1.h, right: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 6.v, bottom: 1.v),
                                child: Text("My Family",
                                    style: CustomTextStyles
                                        .labelLargeKarlaGray900)),
                            CustomDropDown(
                                width: 79.h,
                                icon: Container(
                                    margin: EdgeInsets.only(left: 6.h),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgArrowdownPrimary,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize)),
                                hintText: "Show All ",
                                items: dropdownItemList,
                                onChanged: (value) {})
                          ])),
                  SizedBox(height: 17.v),
                  SizedBox(
                      height: 96.v,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 22.h);
                          },
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return DoctorprofileItemWidget();
                          }))
                ])));
  }

  /// Section Widget
  Widget _buildRecentEvents(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 1.h, top: 205.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text("Recent Events",
                          style: CustomTextStyles.labelLargeKarlaGray900)),
                  SizedBox(height: 8.v),
                  SizedBox(
                      height: 146.v,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 1.h);
                          },
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return FrameeightItemWidget();
                          }))
                ])));
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.framePage:
        return FramePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the profileZeroScreen when the action is triggered.
  onTapLock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileZeroScreen);
  }

  /// Navigates to the calendarTwoScreen when the action is triggered.
  onTapCreateNewEvent(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarTwoScreen);
  }
  
}