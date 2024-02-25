import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/presentation/frame_page/frame_page.dart';
import 'package:carebuzz/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:carebuzz/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carebuzz/widgets/custom_bottom_bar.dart';
import 'package:carebuzz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class NotificationsScreen extends StatelessWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup216),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 12.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.h),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        _buildNotificationsFrame(context),
                                        SizedBox(height: 13.v),
                                        Text("New",
                                            style: CustomTextStyles
                                                .titleLargeBlack900),
                                        SizedBox(height: 7.v),
                                        Container(
                                            height: 100.v,
                                            width: 355.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray5001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8.h))),
                                        SizedBox(height: 4.v),
                                        Container(
                                            height: 100.v,
                                            width: 355.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray5001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8.h))),
                                        SizedBox(height: 4.v),
                                        Container(
                                            height: 100.v,
                                            width: 355.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray5001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        8.h))),
                                        Text("Past notifications",
                                            style: CustomTextStyles
                                                .titleLargeBlack900),
                                        SizedBox(height: 8.v),
                                        CustomTextFormField(
                                            controller: editTextController,
                                            textInputAction:
                                                TextInputAction.done,
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .outlineBlack,
                                            filled: true,
                                            fillColor: appTheme.gray5001),
                                        SizedBox(height: 4.v),
                                        Container(
                                            height: 100.v,
                                            width: 355.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray5001,
                                                borderRadius:
                                                    BorderRadius.circular(8.h),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: appTheme.black900
                                                          .withOpacity(0.25),
                                                      spreadRadius: 2.h,
                                                      blurRadius: 2.h,
                                                      offset: Offset(0, 1))
                                                ])),
                                        SizedBox(height: 4.v),
                                        Container(
                                            height: 100.v,
                                            width: 355.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray5001,
                                                borderRadius:
                                                    BorderRadius.circular(8.h),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: appTheme.black900
                                                          .withOpacity(0.25),
                                                      spreadRadius: 2.h,
                                                      blurRadius: 2.h,
                                                      offset: Offset(0, 1))
                                                ]))
                                      ]))))
                    ]))),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 101.v,
        leadingWidth: 53.h,
        leading: AppbarLeadingImageOne(
            imagePath: ImageConstant.imgTelevision,
            margin: EdgeInsets.only(left: 30.h, top: 56.v, bottom: 22.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLockBlack900,
              margin: EdgeInsets.fromLTRB(37.h, 55.v, 37.h, 23.v),
              onTap: () {
                onTapLock(context);
              })
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildNotificationsFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 29.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Notifications", style: theme.textTheme.headlineMedium),
          CustomImageView(
              imagePath: ImageConstant.imgNotification01Black900,
              height: 35.adaptSize,
              width: 35.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(context, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.framecontinueScreen;
      case BottomBarEnum.Search:
        return AppRoutes.searchbarOneScreen;
      case BottomBarEnum.Notification01:
        return AppRoutes.notificationsScreen;
      case BottomBarEnum.Thumbsup:
        return AppRoutes.calendarScreen;
      default:
        return "/";
    }
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
}
