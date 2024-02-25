import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeadlineItemWidget extends StatelessWidget {
  HeadlineItemWidget({
    Key? key,
    this.onTapBtnButton,
  }) : super(
          key: key,
        );

  VoidCallback? onTapBtnButton;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
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
              width: 500.h,
              margin: EdgeInsets.only(right: 14.h),
              child: Text(
                "Consult only with a doctor you trust",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleLargeInterOnPrimaryBold.copyWith(
                  height: 1.35,
                ),
              ),
            ),
            SizedBox(height: 18.v),
            CustomIconButton(
              height: 58.adaptSize,
              width: 58.adaptSize,
              padding: EdgeInsets.all(16.h),
              alignment: Alignment.centerRight,
              onTap: () {
                onTapBtnButton!.call();
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgButton,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
