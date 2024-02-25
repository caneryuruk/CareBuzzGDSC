import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Headline1ItemWidget extends StatelessWidget {
  const Headline1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.gradientGrayToGray.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 69.v),
            Container(
              width: 248.h,
              margin: EdgeInsets.only(right: 52.h),
              child: Text(
                "Get connect our Online Consultation",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleLargeInterOnPrimaryBold.copyWith(
                  height: 1.35,
                ),
              ),
            ),
            SizedBox(height: 19.v),
            Padding(
              padding: EdgeInsets.only(right: 4.h),
              child: CustomIconButton(
                height: 58.adaptSize,
                width: 58.adaptSize,
                padding: EdgeInsets.all(16.h),
                alignment: Alignment.centerRight,
                child: CustomImageView(
                  imagePath: ImageConstant.imgButton,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
