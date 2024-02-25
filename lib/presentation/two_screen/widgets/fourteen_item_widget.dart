import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FourteenItemWidget extends StatelessWidget {
  const FourteenItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.gradientGrayToGray.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 69.v),
            Container(
              width: 400.h,
              margin: EdgeInsets.only(right: 69.h),
              child: Text(
                "Find a lot of specialist doctors in one place",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleLargeInterOnPrimaryBold.copyWith(
                  height: 1.35,
                ),
              ),
            ),
            SizedBox(height: 18.v),
            Padding(
              padding: EdgeInsets.only(right: 6.h),
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
