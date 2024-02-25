import 'package:carebuzz/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashscreenScreen extends StatelessWidget {
  const SplashscreenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900.withOpacity(0.2),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 59.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              CustomImageView(
                imagePath: ImageConstant.imgAr1707426243,
                height: 223.v,
                width: 189.h,
                alignment: Alignment.center,
              ),
              SizedBox(height: 19.v),
              Text(
                "CareBuzz",
                style: theme.textTheme.displayMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
