import 'package:carebuzz/core/app_export.dart';
import 'package:carebuzz/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SignupsuccessDialog extends StatelessWidget {
  const SignupsuccessDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 327.h,
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 38.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 22.v),
          Container(
              height: 102.adaptSize,
              width: 102.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 34.v),
              decoration: AppDecoration.fillGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder51),
              child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkPrimary,
                  height: 31.v,
                  width: 41.h,
                  radius: BorderRadius.circular(3.h),
                  alignment: Alignment.center)),
          SizedBox(height: 40.v),
          Text("Success", style: CustomTextStyles.titleLargeInterOnPrimary),
          SizedBox(height: 9.v),
          SizedBox(
              width: 290.h,
              child: Text("Your account has been successfully registered",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLargeInterBluegray300
                      .copyWith(height: 1.50))),
          SizedBox(height: 22.v),
          CustomElevatedButton(
              width: 183.h,
              text: "Login",
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
