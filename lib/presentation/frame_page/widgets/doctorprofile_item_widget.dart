import 'package:carebuzz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorprofileItemWidget extends StatelessWidget {
  const DoctorprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse21,
            height: 68.adaptSize,
            width: 68.adaptSize,
            radius: BorderRadius.circular(
              34.h,
            ),
          ),
          SizedBox(height: 5.v),
          SizedBox(
            width: 68.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Dr. Steve John\n",
                    style: theme.textTheme.labelMedium,
                  ),
                  TextSpan(
                    text: "Endocrinologist ",
                    style: CustomTextStyles.karlaff000000,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
