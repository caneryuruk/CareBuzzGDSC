import '../two_screen/widgets/fourteen_item_widget.dart';
import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:carebuzz/widgets/app_bar/custom_app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class TwoScreen extends StatelessWidget {
  TwoScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                height: 734.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 31.h),
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.img7xm2,
                      height: 467.v,
                      width: 317.h,
                      alignment: Alignment.topLeft),
                  _buildOnboardingTwoImage(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(actions: [
      AppbarSubtitleOne(
          text: "Skip",
          margin: EdgeInsets.symmetric(horizontal: 23.h, vertical: 19.v),
          onTap: () {
            onTapSkip(context);
          })
    ]);
  }

  /// Section Widget
  Widget _buildOnboardingTwoImage(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: 226.v,
            width: 321.h,
            margin: EdgeInsets.only(bottom: 5.v),
            child: Stack(alignment: Alignment.bottomLeft, children: [
              CarouselSlider.builder(
                  options: CarouselOptions(
                      height: 226.v,
                      initialPage: 0,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        sliderIndex = index;
                      }),
                  itemCount: 1,
                  itemBuilder: (context, index, realIndex) {
                    return FourteenItemWidget();
                  }),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      height: 4.v,
                      margin: EdgeInsets.only(left: 9.h, bottom: 29.v),
                      child: AnimatedSmoothIndicator(
                          activeIndex: sliderIndex,
                          count: 1,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                              spacing: 3.12,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: theme.colorScheme.secondaryContainer,
                              dotHeight: 4.v,
                              dotWidth: 13.h))))
            ])));
  }

  /// Navigates to the fourScreen when the action is triggered.
  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fourScreen);
  }
}
