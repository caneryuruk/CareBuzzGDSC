import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/presentation/frame_page/frame_page.dart';
import 'package:carebuzz/widgets/app_bar/appbar_leading_image_one.dart';
import 'package:carebuzz/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carebuzz/widgets/custom_bottom_bar.dart';
import 'package:carebuzz/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchbarOneScreen extends StatelessWidget {
  SearchbarOneScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 44.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(left: 57.h, right: 33.h),
                          child: CustomSearchView(
                              controller: searchController,
                              hintText: "Search",
                              alignment: Alignment.centerRight))),
                  Spacer()
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 92.v,
        leadingWidth: 53.h,
        leading: AppbarLeadingImageOne(
            imagePath: ImageConstant.imgTelevision,
            margin: EdgeInsets.only(left: 30.h, top: 47.v, bottom: 22.v)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgLockBlack900,
              margin: EdgeInsets.fromLTRB(37.h, 46.v, 37.h, 23.v),
              onTap: () {
                onTapLock(context);
              })
        ],
        styleType: Style.bgFill);
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
