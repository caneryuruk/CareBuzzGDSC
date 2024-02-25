import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/presentation/frame_page/frame_page.dart';
import 'package:carebuzz/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:carebuzz/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carebuzz/widgets/custom_bottom_bar.dart';
import 'package:carebuzz/widgets/custom_elevated_button.dart';
import 'package:carebuzz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CalendarFourScreen extends StatelessWidget {
  CalendarFourScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h),
                child: Column(children: [
                  SizedBox(height: 13.v),
                  _buildArrowLeft(context),
                  SizedBox(height: 23.v),
                  _buildMon(context),
                  SizedBox(height: 25.v),
                  _buildTwo(context),
                  SizedBox(height: 3.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(left: 184.h, right: 117.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    height: 4.adaptSize,
                                    width: 4.adaptSize,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(2.h),
                                        border: Border.all(
                                            color: theme.colorScheme.onError,
                                            width: 1.h))),
                                Container(
                                    height: 4.adaptSize,
                                    width: 4.adaptSize,
                                    margin: EdgeInsets.only(left: 2.h),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(2.h),
                                        border: Border.all(
                                            color: appTheme.deepPurpleA200,
                                            width: 1.h))),
                                Container(
                                    height: 4.adaptSize,
                                    width: 4.adaptSize,
                                    margin: EdgeInsets.only(left: 2.h),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(2.h),
                                        border: Border.all(
                                            color: appTheme.lightBlueA700,
                                            width: 1.h))),
                                Spacer(),
                                Container(
                                    height: 4.adaptSize,
                                    width: 4.adaptSize,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(2.h),
                                        border: Border.all(
                                            color: appTheme.lightBlueA700,
                                            width: 1.h))),
                                Container(
                                    height: 4.adaptSize,
                                    width: 4.adaptSize,
                                    margin: EdgeInsets.only(left: 2.h),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(2.h),
                                        border: Border.all(
                                            color: appTheme.deepPurpleA200,
                                            width: 1.h)))
                              ]))),
                  SizedBox(height: 20.v),
                  _buildSix(context),
                  SizedBox(height: 8.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h, right: 114.h),
                          child: Row(children: [
                            Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.h),
                                    border: Border.all(
                                        color: theme.colorScheme.onError,
                                        width: 1.h))),
                            Spacer(flex: 52),
                            Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.h),
                                    border: Border.all(
                                        color: appTheme.deepPurpleA200,
                                        width: 1.h))),
                            Spacer(flex: 47),
                            Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.h),
                                    border: Border.all(
                                        color: appTheme.lightBlueA700,
                                        width: 1.h))),
                            Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                margin: EdgeInsets.only(left: 2.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.h),
                                    border: Border.all(
                                        color: appTheme.deepPurpleA200,
                                        width: 1.h))),
                            Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                margin: EdgeInsets.only(left: 2.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.h),
                                    border: Border.all(
                                        color: theme.colorScheme.onError,
                                        width: 1.h)))
                          ]))),
                  SizedBox(height: 20.v),
                  _buildThirteen(context),
                  SizedBox(height: 8.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 13.h, right: 121.h),
                          child: Row(children: [
                            Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.h),
                                    border: Border.all(
                                        color: appTheme.lightBlueA700,
                                        width: 1.h))),
                            Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                margin: EdgeInsets.only(left: 2.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.h),
                                    border: Border.all(
                                        color: appTheme.deepPurpleA200,
                                        width: 1.h))),
                            Spacer(flex: 50),
                            Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.h),
                                    border: Border.all(
                                        color: appTheme.deepPurpleA200,
                                        width: 1.h))),
                            Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                margin: EdgeInsets.only(left: 2.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.h),
                                    border: Border.all(
                                        color: theme.colorScheme.onError,
                                        width: 1.h))),
                            Spacer(flex: 49),
                            Container(
                                height: 4.adaptSize,
                                width: 4.adaptSize,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.h),
                                    border: Border.all(
                                        color: theme.colorScheme.onError,
                                        width: 1.h)))
                          ]))),
                  SizedBox(height: 19.v),
                  _buildOk(context),
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgClose,
                      height: 19.adaptSize,
                      width: 19.adaptSize)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 53.h,
        leading: AppbarLeadingImageOne(
            imagePath: ImageConstant.imgTelevision,
            margin: EdgeInsets.only(left: 30.h, top: 16.v, bottom: 16.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLockBlack900,
              margin: EdgeInsets.fromLTRB(37.h, 16.v, 37.h, 17.v),
              onTap: () {
                onTapLock(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildArrowLeft(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: _buildArrowRight(context, onTapArrowRight: () {
                onTapArrowLeft(context);
              })),
          Spacer(flex: 47),
          Column(children: [
            Text("September",
                style: CustomTextStyles.titleLargeSFUITextBluegray900Medium),
            Text("2021",
                style: CustomTextStyles.labelLargeSFUITextBluegray30001_1)
          ]),
          Spacer(flex: 52),
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: _buildArrowRight(context))
        ]));
  }

  /// Section Widget
  Widget _buildMon(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Mon",
              style: CustomTextStyles.labelLargeSFUITextBluegray3000113),
          Text("Tue",
              style: CustomTextStyles.labelLargeSFUITextBluegray3000113),
          Text("Wed",
              style: CustomTextStyles.labelLargeSFUITextBluegray3000113),
          Text("Thu",
              style: CustomTextStyles.labelLargeSFUITextBluegray3000113),
          Text("Fri",
              style: CustomTextStyles.labelLargeSFUITextBluegray3000113),
          Text("Sat",
              style: CustomTextStyles.labelLargeSFUITextBluegray3000113),
          Text("Sun", style: CustomTextStyles.labelLargeSFUITextBluegray3000113)
        ]));
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
              child:
                  Text("31", style: CustomTextStyles.titleSmallBluegray30001)),
          Spacer(flex: 16),
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
              child:
                  Text("30", style: CustomTextStyles.titleSmallBluegray30001)),
          Spacer(flex: 17),
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
              child: Text("1", style: theme.textTheme.titleSmall)),
          Spacer(flex: 17),
          CustomElevatedButton(
              height: 30.v,
              width: 30.h,
              text: "2",
              buttonStyle: CustomButtonStyles.fillDeepPurpleATL10,
              buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainer),
          Spacer(flex: 13),
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
              child: Text("3", style: theme.textTheme.titleSmall)),
          Spacer(flex: 16),
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
              child: Text("4", style: theme.textTheme.titleSmall)),
          Spacer(flex: 18),
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
              child: Text("5", style: theme.textTheme.titleSmall))
        ]));
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 13.h, right: 7.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("6", style: theme.textTheme.titleSmall),
          Spacer(flex: 18),
          Text("7", style: theme.textTheme.titleSmall),
          Spacer(flex: 18),
          Text("8", style: theme.textTheme.titleSmall),
          Spacer(flex: 19),
          Text("9", style: theme.textTheme.titleSmall),
          Spacer(flex: 15),
          Text("10", style: theme.textTheme.titleSmall),
          Spacer(flex: 13),
          Text("11", style: theme.textTheme.titleSmall),
          Spacer(flex: 15),
          Text("12", style: theme.textTheme.titleSmall)
        ]));
  }

  /// Section Widget
  Widget _buildThirteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h, right: 7.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("13", style: theme.textTheme.titleSmall),
          Spacer(flex: 17),
          Text("14", style: theme.textTheme.titleSmall),
          Spacer(flex: 17),
          Text("15", style: theme.textTheme.titleSmall),
          Spacer(flex: 17),
          Text("16", style: theme.textTheme.titleSmall),
          Spacer(flex: 14),
          Text("17", style: theme.textTheme.titleSmall),
          Spacer(flex: 15),
          Text("18", style: theme.textTheme.titleSmall),
          Spacer(flex: 16),
          Text("19", style: theme.textTheme.titleSmall)
        ]));
  }

  /// Section Widget
  Widget _buildOk(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 120.v),
                  child: Column(children: [
                    Text("20", style: theme.textTheme.titleSmall),
                    SizedBox(height: 8.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.h),
                              border: Border.all(
                                  color: appTheme.deepPurpleA200, width: 1.h))),
                      Container(
                          height: 4.adaptSize,
                          width: 4.adaptSize,
                          margin: EdgeInsets.only(left: 2.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.h),
                              border: Border.all(
                                  color: theme.colorScheme.onError,
                                  width: 1.h)))
                    ]),
                    SizedBox(height: 21.v),
                    Text("27", style: theme.textTheme.titleSmall)
                  ])),
              Container(
                  height: 192.v,
                  width: 298.h,
                  margin: EdgeInsets.only(left: 4.h),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                            padding: EdgeInsets.only(left: 34.h, right: 24.h),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 238.h,
                                      margin: EdgeInsets.only(left: 2.h),
                                      child: Row(children: [
                                        Text("21",
                                            style: theme.textTheme.titleSmall),
                                        Spacer(flex: 27),
                                        Text("22",
                                            style: theme.textTheme.titleSmall),
                                        Spacer(flex: 28),
                                        Text("23",
                                            style: theme.textTheme.titleSmall),
                                        Spacer(flex: 21),
                                        Text("24",
                                            style: theme.textTheme.titleSmall),
                                        Spacer(flex: 22),
                                        Text("25",
                                            style: theme.textTheme.titleSmall)
                                      ])),
                                  SizedBox(height: 8.v),
                                  Container(
                                      width: 70.h,
                                      margin: EdgeInsets.only(
                                          left: 59.h, right: 110.h),
                                      child: Row(children: [
                                        Container(
                                            height: 4.adaptSize,
                                            width: 4.adaptSize,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2.h),
                                                border: Border.all(
                                                    color:
                                                        appTheme.lightBlueA700,
                                                    width: 1.h))),
                                        Container(
                                            height: 4.adaptSize,
                                            width: 4.adaptSize,
                                            margin: EdgeInsets.only(left: 2.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2.h),
                                                border: Border.all(
                                                    color:
                                                        appTheme.deepPurpleA200,
                                                    width: 1.h))),
                                        Container(
                                            height: 4.adaptSize,
                                            width: 4.adaptSize,
                                            margin: EdgeInsets.only(left: 2.h),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2.h),
                                                border: Border.all(
                                                    color: theme
                                                        .colorScheme.onError,
                                                    width: 1.h))),
                                        Spacer(),
                                        Container(
                                            height: 4.adaptSize,
                                            width: 4.adaptSize,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2.h),
                                                border: Border.all(
                                                    color:
                                                        appTheme.deepPurpleA200,
                                                    width: 1.h)))
                                      ])),
                                  SizedBox(height: 20.v),
                                  Padding(
                                      padding: EdgeInsets.only(right: 7.h),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Text("28",
                                                    style: theme
                                                        .textTheme.titleSmall)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Text("29",
                                                    style: theme
                                                        .textTheme.titleSmall)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Text("30",
                                                    style: theme
                                                        .textTheme.titleSmall)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Text("31",
                                                    style: theme
                                                        .textTheme.titleSmall)),
                                            Text("1",
                                                style: CustomTextStyles
                                                    .titleSmallBluegray30001)
                                          ]))
                                ]))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 13.h, vertical: 21.v),
                            decoration: AppDecoration.outlineBlack9001.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder51),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 259.h,
                                      margin: EdgeInsets.only(left: 13.h),
                                      decoration: AppDecoration.outlineBlack900,
                                      child: Text(
                                          "Event \nAdded\nSuccessfully!",
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .headlineSmallInterBlack900)),
                                  SizedBox(height: 20.v),
                                  CustomElevatedButton(
                                      height: 40.v,
                                      width: 155.h,
                                      text: "OK",
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimaryTL20)
                                ])))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, bottom: 120.v),
                  child: Column(children: [
                    Text("26", style: theme.textTheme.titleSmall),
                    SizedBox(height: 33.v),
                    Text("2", style: CustomTextStyles.titleSmallBluegray30001)
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildArrowRight(
    BuildContext context, {
    Function? onTapArrowRight,
  }) {
    return SizedBox(
        height: 34.adaptSize,
        width: 34.adaptSize,
        child: Stack(alignment: Alignment.center, children: [
          CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.outlineGray,
              alignment: Alignment.center,
              onTap: () {
                onTapArrowRight!.call();
              },
              child: CustomImageView(imagePath: ImageConstant.imgArrowRight)),
          CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.outlineOnPrimaryContainer,
              alignment: Alignment.center,
              onTap: () {
                onTapArrowRight!.call();
              },
              child: CustomImageView(imagePath: ImageConstant.imgArrowRight))
        ]));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.framePage;
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Notification01:
        return "/";
      case BottomBarEnum.Thumbsup:
        return "/";
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft1(BuildContext context) {
    Navigator.pop(context);
  }
}
