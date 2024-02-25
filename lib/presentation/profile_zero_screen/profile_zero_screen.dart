import '../profile_zero_screen/widgets/userprofile_item_widget.dart';
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
class ProfileZeroScreen extends StatelessWidget {
  ProfileZeroScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildAppBar(context),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(children: [
                        SizedBox(height: 29.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 40.h, right: 18.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 2.v),
                                          child: Column(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgAge1,
                                                height: 24.v,
                                                width: 33.h),
                                            SizedBox(height: 8.v),
                                            Text("22",
                                                style: CustomTextStyles
                                                    .bodyLargeManrope18)
                                          ])),
                                      Spacer(flex: 36),
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 2.v),
                                          child: Column(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgHeight1,
                                                height: 24.v,
                                                width: 28.h),
                                            SizedBox(height: 9.v),
                                            Text("1.90 m",
                                                style: CustomTextStyles
                                                    .bodyLargeManrope)
                                          ])),
                                      Spacer(flex: 31),
                                      Column(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgWeight1,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        SizedBox(height: 11.v),
                                        Text("85 Kg",
                                            style: CustomTextStyles
                                                .bodyLargeManrope)
                                      ]),
                                      Spacer(flex: 32),
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 2.v),
                                          child: Column(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgBlood2,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize),
                                            SizedBox(height: 9.v),
                                            Text("A Rh+",
                                                style: CustomTextStyles
                                                    .bodyLargeManrope18)
                                          ]))
                                    ]))),
                        SizedBox(height: 20.v),
                        _buildUserProfile(context)
                      ]))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 30.h, right: 16.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return SizedBox(
        height: 342.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 54.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup29),
                          fit: BoxFit.cover)),
                  child: CustomAppBar(
                      height: 25.v,
                      leadingWidth: 54.h,
                      leading: AppbarLeadingImageOne(
                          imagePath: ImageConstant.imgTelevision,
                          margin: EdgeInsets.only(left: 31.h, top: 2.v)),
                      actions: [
                        AppbarTrailingImage(
                            imagePath: ImageConstant.imgSettings,
                            margin: EdgeInsets.only(
                                left: 38.h, right: 38.h, bottom: 1.v))
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 132.h, right: 128.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(
                        height: 141.v,
                        width: 130.h,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse145130x130,
                              height: 130.adaptSize,
                              width: 130.adaptSize,
                              radius: BorderRadius.circular(65.h),
                              alignment: Alignment.topCenter),
                          Padding(
                              padding: EdgeInsets.only(right: 3.h),
                              child: CustomIconButton(
                                  height: 46.adaptSize,
                                  width: 46.adaptSize,
                                  padding: EdgeInsets.all(11.h),
                                  decoration: IconButtonStyleHelper
                                      .outlineOnErrorContainer,
                                  alignment: Alignment.bottomRight,
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgLineDesignEditLine)))
                        ])),
                    SizedBox(height: 1.v),
                    Text("Puerto Rico", style: theme.textTheme.titleLarge)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return UserprofileItemWidget(onTapComponentTwelve: () {
                onTapComponentTwelve(context);
              });
            }));
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

  /// Navigates to the profileoneScreen when the action is triggered.
  onTapComponentTwelve(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileoneScreen);
  }
}
