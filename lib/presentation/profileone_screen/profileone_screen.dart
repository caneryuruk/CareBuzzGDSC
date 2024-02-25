import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/app_bar/appbar_leading_image.dart';
import 'package:carebuzz/widgets/app_bar/appbar_title.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carebuzz/widgets/custom_elevated_button.dart';
import 'package:carebuzz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileoneScreen extends StatelessWidget {
  ProfileoneScreen({Key? key}) : super(key: key);

  TextEditingController bigOutlineFullNameController = TextEditingController();

  TextEditingController bigOutlineEmailController = TextEditingController();

  TextEditingController bigOutlineGenderValueController =
      TextEditingController();

  TextEditingController bigOutlineBloodTypeValueController =
      TextEditingController();

  TextEditingController bigOutlineWeightValueController =
      TextEditingController();

  TextEditingController bigOutlineWeightValue2Controller =
      TextEditingController();

  TextEditingController birthDayValueController = TextEditingController();

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
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 17.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildBigOutline(context),
                                  SizedBox(height: 19.v),
                                  _buildBigOutline1(context),
                                  SizedBox(height: 18.v),
                                  _buildGendervalue(context),
                                  SizedBox(height: 17.v),
                                  _buildWeightvalue(context),
                                  SizedBox(height: 19.v),
                                  _buildBirthDayValue(context),
                                  SizedBox(height: 40.v),
                                  _buildSubmitButton(context),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconChevronLeft,
            margin: EdgeInsets.only(left: 34.h, top: 13.v, bottom: 18.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Edit profile"));
  }

  /// Section Widget
  Widget _buildBigOutlineFullName(BuildContext context) {
    return CustomTextFormField(
        width: 342.h,
        controller: bigOutlineFullNameController,
        hintText: "Full name",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildBigOutline(BuildContext context) {
    return SizedBox(
        height: 50.v,
        width: 342.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                  child: Text("Puerto Rico",
                      style: CustomTextStyles.bodyMediumGray90002))),
          _buildBigOutlineFullName(context)
        ]));
  }

  /// Section Widget
  Widget _buildBigOutlineEmail(BuildContext context) {
    return CustomTextFormField(
        width: 342.h,
        controller: bigOutlineEmailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildBigOutline1(BuildContext context) {
    return SizedBox(
        height: 50.v,
        width: 342.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, bottom: 7.v),
                  child: Text("youremail@domain.com",
                      style: CustomTextStyles.bodyMediumGray90002))),
          _buildBigOutlineEmail(context)
        ]));
  }

  /// Section Widget
  Widget _buildBigOutlineGenderValue(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: bigOutlineGenderValueController,
        hintText: "Gender",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildBigOutlineBloodTypeValue(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: bigOutlineBloodTypeValueController,
        hintText: "Blood Type",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildGendervalue(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 50.v,
          width: 163.h,
          margin: EdgeInsets.only(top: 1.v),
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                    child: Text("Female",
                        style: CustomTextStyles.bodyMediumGray90002))),
            _buildBigOutlineGenderValue(context)
          ])),
      SizedBox(
          height: 50.v,
          width: 163.h,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                    child: Text("A+",
                        style: CustomTextStyles.bodyMediumGray90002))),
            _buildBigOutlineBloodTypeValue(context)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildBigOutlineWeightValue(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: bigOutlineWeightValueController,
        hintText: "Weight",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildBigOutlineWeightValue2(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: bigOutlineWeightValue2Controller,
        hintText: "Height",
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildWeightvalue(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 50.v,
          width: 163.h,
          margin: EdgeInsets.only(top: 2.v),
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                    child: Text("80",
                        style: CustomTextStyles.bodyMediumGray90002))),
            _buildBigOutlineWeightValue(context)
          ])),
      SizedBox(
          height: 50.v,
          width: 163.h,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                    child: Text("180",
                        style: CustomTextStyles.bodyMediumGray90002))),
            _buildBigOutlineWeightValue2(context)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildBirthDayValue(BuildContext context) {
    return CustomTextFormField(
        width: 163.h,
        controller: birthDayValueController,
        hintText: "Birth Day",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildSubmitButton(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        text: "submit".toUpperCase(),
        buttonStyle: CustomButtonStyles.fillPrimaryTL20,
        buttonTextStyle: CustomTextStyles.titleMediumGray5005,
        onPressed: () {
          onTapSubmitButton(context);
        });
  }

  /// Navigates to the profileZeroScreen when the action is triggered.
  onTapSubmitButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileZeroScreen);
  }
}
