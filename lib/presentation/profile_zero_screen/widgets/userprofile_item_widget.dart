import 'package:carebuzz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({
    Key? key,
    this.onTapComponentTwelve,
  }) : super(
          key: key,
        );

  VoidCallback? onTapComponentTwelve;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlack9002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCalendar03,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 4.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "Birthday",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 3.v),
                  child: Text(
                    "DD/MM/YYYY",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 11.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgId,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      onTapComponentTwelve!.call();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        top: 3.v,
                        bottom: 3.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gender",
                            style: theme.textTheme.bodyMedium,
                          ),
                          Text(
                            "Female",
                            style: CustomTextStyles.bodyMediumBlueA400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
