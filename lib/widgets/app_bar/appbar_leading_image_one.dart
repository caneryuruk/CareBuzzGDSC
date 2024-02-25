import 'package:carebuzz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppbarLeadingImageOne extends StatelessWidget {
  AppbarLeadingImageOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.customBorderBL40,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 23.adaptSize,
          width: 23.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.vertical(
            bottom: Radius.circular(40.h),
          ),
        ),
      ),
    );
  }
}
