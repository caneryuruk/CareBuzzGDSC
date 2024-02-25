import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ResetpassswordsuccessDialog extends StatelessWidget {
  const ResetpassswordsuccessDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 327.h,
        padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 40.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 17.v),
          Container(
              height: 103.adaptSize,
              width: 103.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 34.v),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder51),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkGreenA700,
                  height: 32.v,
                  width: 42.h,
                  radius: BorderRadius.circular(3.h),
                  alignment: Alignment.center)),
          SizedBox(height: 40.v),
          Text("Success", style: CustomTextStyles.titleLargeInterOnPrimary),
          SizedBox(height: 9.v),
          SizedBox(
              width: 248.h,
              child: Text("You have successfully reset your password.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeInterBluegray300Regular
                      .copyWith(height: 1.50))),
          SizedBox(height: 22.v),
          CustomElevatedButton(
              text: "Login",
              margin: EdgeInsets.symmetric(horizontal: 32.h),
              onPressed: () {
                onTapLogin(context);
              })
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
