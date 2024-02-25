import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/presentation/frame_page/frame_page.dart';
import 'package:carebuzz/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:carebuzz/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carebuzz/widgets/custom_bottom_bar.dart';
import 'package:carebuzz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class CalendarScreen extends StatelessWidget {
  CalendarScreen({Key? key}) : super(key: key);

  List<DateTime?> selectedDatesFromCalendar1 = [];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.v),
                      _buildSpacerRow(context),
                      SizedBox(height: 26.v),
                      _buildCalendar(context),
                      SizedBox(height: 39.v),
                      _buildEyeAppointmentRow(context),
                      SizedBox(height: 1.v),
                      _buildDentalCheckUpStack(context)
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
  Widget _buildSpacerRow(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 36.h, right: 39.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 9.v),
                      child: CustomIconButton(
                          height: 34.adaptSize,
                          width: 34.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup158))),
                  Spacer(flex: 53),
                  Padding(
                      padding: EdgeInsets.only(top: 7.v),
                      child: Column(children: [
                        Text("September",
                            style: CustomTextStyles
                                .titleLargeSFUITextBluegray900Medium),
                        Text("2021",
                            style: CustomTextStyles
                                .labelLargeSFUITextBluegray30001_1)
                      ])),
                  Spacer(flex: 46),
                  Padding(
                      padding: EdgeInsets.only(bottom: 9.v),
                      child: CustomIconButton(
                          height: 34.adaptSize,
                          width: 34.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          child: CustomImageView(
                              imagePath:
                                  ImageConstant.imgArrowDownSignToNavigate)))
                ])));
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 344.v,
            width: 342.h,
            child: CalendarDatePicker2(
                config: CalendarDatePicker2Config(
                    calendarType: CalendarDatePicker2Type.single,
                    firstDate: DateTime(DateTime.now().year - 5),
                    lastDate: DateTime(DateTime.now().year + 5),
                    selectedDayHighlightColor: Color(0XFF735BF2),
                    firstDayOfWeek: 1,
                    weekdayLabelTextStyle: TextStyle(
                        color: appTheme.blueGray30001,
                        fontFamily: 'SF UI  Text',
                        fontWeight: FontWeight.w500),
                    selectedDayTextStyle: TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontFamily: 'SF UI  Text',
                        fontWeight: FontWeight.w700),
                    dayTextStyle: TextStyle(
                        color: appTheme.blueGray30001,
                        fontFamily: 'SF UI  Text',
                        fontWeight: FontWeight.w500),
                    disabledDayTextStyle: TextStyle(
                        color: appTheme.blueGray30001,
                        fontFamily: 'SF UI  Text',
                        fontWeight: FontWeight.w500),
                    weekdayLabels: [
                      "Sun",
                      "Mon",
                      "Tue",
                      "Wed",
                      "Thu",
                      "Fri",
                      "Sat"
                    ],
                    dayBorderRadius: BorderRadius.circular(10.h)),
                value: selectedDatesFromCalendar1,
                onValueChanged: (dates) {})));
  }

  /// Section Widget
  Widget _buildEyeAppointmentRow(BuildContext context) {
    return Container(
        width: 369.h,
        margin: EdgeInsets.only(right: 21.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 4.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup283), fit: BoxFit.cover)),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(children: [
                  Container(
                      height: 9.adaptSize,
                      width: 9.adaptSize,
                      margin: EdgeInsets.only(top: 3.v, bottom: 2.v),
                      decoration:
                          BoxDecoration(color: theme.colorScheme.onError)),
                  Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: Text("10:00-13:00",
                          style:
                              CustomTextStyles.labelLargeSFUITextBluegray30001))
                ]),
                SizedBox(height: 9.v),
                Text("Eye Appointment",
                    style: CustomTextStyles.titleMediumManrope),
                SizedBox(height: 10.v),
                Text("Dr. Martin",
                    style: CustomTextStyles.bodySmallInterBlack900)
              ]),
              Spacer(),
              Container(
                  height: 3.adaptSize,
                  width: 3.adaptSize,
                  margin: EdgeInsets.only(top: 11.v, bottom: 51.v),
                  decoration: BoxDecoration(
                      color: appTheme.blueGray30001,
                      borderRadius: BorderRadius.circular(1.h))),
              Container(
                  height: 3.adaptSize,
                  width: 3.adaptSize,
                  margin: EdgeInsets.only(left: 2.h, top: 11.v, bottom: 51.v),
                  decoration: BoxDecoration(
                      color: appTheme.blueGray30001,
                      borderRadius: BorderRadius.circular(1.h))),
              Container(
                  height: 3.adaptSize,
                  width: 3.adaptSize,
                  margin: EdgeInsets.fromLTRB(2.h, 11.v, 3.h, 51.v),
                  decoration: BoxDecoration(
                      color: appTheme.blueGray30001,
                      borderRadius: BorderRadius.circular(1.h)))
            ]));
  }

  /// Section Widget
  Widget _buildDentalCheckUpStack(BuildContext context) {
    return SizedBox(
        height: 147.v,
        width: 369.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: 369.h,
                  margin: EdgeInsets.only(bottom: 63.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 9.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup283),
                          fit: BoxFit.cover)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 10.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Row(children: [
                                        Container(
                                            height: 9.adaptSize,
                                            width: 9.adaptSize,
                                            margin: EdgeInsets.only(
                                                top: 3.v, bottom: 2.v),
                                            decoration: BoxDecoration(
                                                color:
                                                    appTheme.deepPurpleA200)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 7.h),
                                            child: Text("14:00-15:00",
                                                style: CustomTextStyles
                                                    .labelLargeSFUITextBluegray30001))
                                      ])),
                                  Text("Dermatologist Appointment",
                                      style:
                                          CustomTextStyles.titleMediumManrope),
                                  SizedBox(height: 2.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: Text("Dr. Walker",
                                          style: CustomTextStyles
                                              .bodySmallInterBlack900))
                                ])),
                        Spacer(),
                        Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(top: 6.v, bottom: 55.v),
                            decoration: BoxDecoration(
                                color: appTheme.blueGray30001,
                                borderRadius: BorderRadius.circular(1.h))),
                        Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.only(
                                left: 2.h, top: 6.v, bottom: 55.v),
                            decoration: BoxDecoration(
                                color: appTheme.blueGray30001,
                                borderRadius: BorderRadius.circular(1.h))),
                        Container(
                            height: 3.adaptSize,
                            width: 3.adaptSize,
                            margin: EdgeInsets.fromLTRB(2.h, 6.v, 4.h, 55.v),
                            decoration: BoxDecoration(
                                color: appTheme.blueGray30001,
                                borderRadius: BorderRadius.circular(1.h)))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgGroup283,
              height: 62.v,
              width: 369.h,
              alignment: Alignment.bottomCenter),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 14.h, right: 17.h, bottom: 18.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Container(
                              height: 9.adaptSize,
                              width: 9.adaptSize,
                              margin: EdgeInsets.only(top: 3.v, bottom: 2.v),
                              decoration:
                                  BoxDecoration(color: appTheme.lightBlueA700)),
                          Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text("19:00-20:00",
                                  style: CustomTextStyles
                                      .labelLargeSFUITextBluegray30001))
                        ]),
                        SizedBox(height: 2.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      height: 3.adaptSize,
                                      width: 3.adaptSize,
                                      decoration: BoxDecoration(
                                          color: appTheme.blueGray30001,
                                          borderRadius:
                                              BorderRadius.circular(1.h))),
                                  Container(
                                      height: 3.adaptSize,
                                      width: 3.adaptSize,
                                      margin: EdgeInsets.only(left: 2.h),
                                      decoration: BoxDecoration(
                                          color: appTheme.blueGray30001,
                                          borderRadius:
                                              BorderRadius.circular(1.h))),
                                  Container(
                                      height: 3.adaptSize,
                                      width: 3.adaptSize,
                                      margin: EdgeInsets.only(left: 2.h),
                                      decoration: BoxDecoration(
                                          color: appTheme.blueGray30001,
                                          borderRadius:
                                              BorderRadius.circular(1.h)))
                                ])),
                        SizedBox(height: 2.v),
                        Text("Dental Check Up",
                            style: CustomTextStyles.titleMediumManrope)
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text("Dr. Mosby",
                      style: CustomTextStyles.bodySmallInterBlack900)))
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
