import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/presentation/frame_page/frame_page.dart';
import 'package:carebuzz/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:carebuzz/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carebuzz/widgets/custom_bottom_bar.dart';
import 'package:carebuzz/widgets/custom_elevated_button.dart';
import 'package:carebuzz/widgets/custom_switch.dart';
import 'package:carebuzz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CalendarThreeScreen extends StatelessWidget {
  CalendarThreeScreen({Key? key}) : super(key: key);

  List<DateTime?> selectedDatesFromCalendar1 = [];

  TextEditingController eventNameController = TextEditingController();

  TextEditingController eventDateController = TextEditingController();

  TextEditingController eventTimeController = TextEditingController();

  bool isSelectedSwitch = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              SizedBox(height: 13.v),
                              _buildCalendar(context),
                              SizedBox(height: 12.v),
                              _buildName(context)
                            ]))))),
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
  Widget _buildCalendar(BuildContext context) {
    return SizedBox(
        height: 335.v,
        width: 361.h,
        child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
                calendarType: CalendarDatePicker2Type.single,
                firstDate: DateTime(DateTime.now().year - 5),
                lastDate: DateTime(DateTime.now().year + 5),
                selectedDayHighlightColor: Color(0XFF735BF2),
                centerAlignModePicker: true,
                firstDayOfWeek: 1,
                controlsHeight: 37.49,
                weekdayLabelTextStyle: TextStyle(
                    color: appTheme.blueGray30001,
                    fontFamily: 'SF UI  Text',
                    fontWeight: FontWeight.w500),
                selectedDayTextStyle: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontFamily: 'SF UI  Text',
                    fontWeight: FontWeight.w700),
                controlsTextStyle: TextStyle(
                    color: appTheme.blueGray900,
                    fontFamily: 'SF UI  Text',
                    fontWeight: FontWeight.w500),
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
            onValueChanged: (dates) {}));
  }

  /// Section Widget
  Widget _buildEventName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: CustomTextFormField(
            controller: eventNameController,
            hintText: "Event name*",
            hintStyle: CustomTextStyles.bodyMediumSFUITextBluegray30001,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 14.h, vertical: 16.v)));
  }

  /// Section Widget
  Widget _buildEventDate(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: CustomTextFormField(
            controller: eventDateController,
            hintText: "Date",
            hintStyle: CustomTextStyles.bodyMediumSFUITextBluegray30001,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 11.v, 13.h, 13.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgCalendar,
                    height: 18.v,
                    width: 16.h)),
            suffixConstraints: BoxConstraints(maxHeight: 42.v),
            contentPadding:
                EdgeInsets.only(left: 14.h, top: 12.v, bottom: 12.v)));
  }

  /// Section Widget
  Widget _buildEventTime(BuildContext context) {
    return CustomTextFormField(
        width: 170.h,
        controller: eventTimeController,
        hintText: "Start time",
        hintStyle: CustomTextStyles.bodyMediumSFUITextBluegray30001,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 12.v));
  }

  /// Section Widget
  Widget _buildCreateEvent(BuildContext context) {
    return CustomElevatedButton(
        height: 42.v,
        text: "Create Event",
        margin: EdgeInsets.only(left: 6.h, right: 8.h),
        buttonStyle: CustomButtonStyles.fillDeepPurpleA,
        buttonTextStyle: CustomTextStyles.titleMediumSFUITextOnErrorContainer);
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return SizedBox(
        height: 387.v,
        width: 389.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 19.adaptSize,
              width: 19.adaptSize,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 61.v)),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 9.h, vertical: 29.v),
                  decoration: AppDecoration.outlineBlack9001.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL32),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 97.h),
                            child: Text("Add New Event",
                                style: CustomTextStyles
                                    .titleLargeSFUITextBluegray90020)),
                        SizedBox(height: 8.v),
                        _buildEventName(context),
                        SizedBox(height: 6.v),
                        _buildEventDate(context),
                        SizedBox(height: 4.v),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h, right: 26.h),
                            child: Row(children: [
                              _buildEventTime(context),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.h, top: 12.v, bottom: 12.v),
                                  child: Text("Reminds me",
                                      style: CustomTextStyles
                                          .bodyMediumSFUITextBluegray900)),
                              Spacer(),
                              CustomSwitch(
                                  margin:
                                      EdgeInsets.only(top: 11.v, bottom: 10.v),
                                  value: isSelectedSwitch,
                                  onChange: (value) {
                                    isSelectedSwitch = value;
                                  })
                            ])),
                        SizedBox(height: 16.v),
                        _buildCreateEvent(context),
                        SizedBox(height: 91.v)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
}
