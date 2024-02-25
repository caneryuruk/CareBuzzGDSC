import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeInterBluegray300 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeInterBluegray300Regular =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.blueGray300,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeInterGray600 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeManrope => theme.textTheme.bodyLarge!.manrope.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeManrope18 => theme.textTheme.bodyLarge!.manrope.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeSFProTextGray800 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.gray800.withOpacity(0.6),
        fontSize: 17.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBlueA400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueA400,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyMediumInterBluegray300 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodyMediumInterff4590c0 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0XFF4590C0),
        fontSize: 15.fSize,
      );
  static get bodyMediumInterff707684 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0XFF707684),
        fontSize: 15.fSize,
      );
  static get bodyMediumInterff70768415 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: Color(0XFF707684),
        fontSize: 15.fSize,
      );
  static get bodyMediumSFProDisplayBluegray800 =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.blueGray800,
        fontSize: 13.fSize,
      );
  static get bodyMediumSFProDisplayGray600 =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.gray600,
        fontSize: 15.fSize,
      );
  static get bodyMediumSFUITextBluegray30001 =>
      theme.textTheme.bodyMedium!.sFUIText.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 15.fSize,
      );
  static get bodyMediumSFUITextBluegray900 =>
      theme.textTheme.bodyMedium!.sFUIText.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static get bodySmallKarlaGray900 => theme.textTheme.bodySmall!.karla.copyWith(
        color: appTheme.gray900,
      );
  // Headline text style
  static get headlineSmallInterBlack900 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  // Karlaff text style
  static get karlaff000000 => TextStyle(
        color: Color(0XFF000000),
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).karla;
  // Label style
  static get labelLargeKarla => theme.textTheme.labelLarge!.karla;
  static get labelLargeKarlaGray900 =>
      theme.textTheme.labelLarge!.karla.copyWith(
        color: appTheme.gray900,
        fontSize: 13.fSize,
      );
  static get labelLargeKarlaGray90013 =>
      theme.textTheme.labelLarge!.karla.copyWith(
        color: appTheme.gray900,
        fontSize: 13.fSize,
      );
  static get labelLargeKarlaOnErrorContainer =>
      theme.textTheme.labelLarge!.karla.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeKarlaOnErrorContainer_1 =>
      theme.textTheme.labelLarge!.karla.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get labelLargeKarlaPrimary =>
      theme.textTheme.labelLarge!.karla.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeKarlaffffffff =>
      theme.textTheme.labelLarge!.karla.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 13.fSize,
      );
  static get labelLargeSFUITextBluegray30001 =>
      theme.textTheme.labelLarge!.sFUIText.copyWith(
        color: appTheme.blueGray30001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFUITextBluegray3000113 =>
      theme.textTheme.labelLarge!.sFUIText.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 13.fSize,
      );
  static get labelLargeSFUITextBluegray3000113_1 =>
      theme.textTheme.labelLarge!.sFUIText.copyWith(
        color: appTheme.blueGray30001,
        fontSize: 13.fSize,
      );
  static get labelLargeSFUITextBluegray30001_1 =>
      theme.textTheme.labelLarge!.sFUIText.copyWith(
        color: appTheme.blueGray30001,
      );
  static get labelMediumGray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.5),
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.2),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeInterOnPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterOnPrimaryBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeKarlaOnErrorContainer =>
      theme.textTheme.titleLarge!.karla.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeSFUITextBluegray900 =>
      theme.textTheme.titleLarge!.sFUIText.copyWith(
        color: appTheme.blueGray900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeSFUITextBluegray90020 =>
      theme.textTheme.titleLarge!.sFUIText.copyWith(
        color: appTheme.blueGray900,
        fontSize: 20.fSize,
      );
  static get titleLargeSFUITextBluegray900Medium =>
      theme.textTheme.titleLarge!.sFUIText.copyWith(
        color: appTheme.blueGray900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray5005 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5005,
        fontSize: 16.fSize,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumInterOnErrorContainer =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterOnErrorContainer16 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumInterOnPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterOnPrimarySemiBold =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumKarlaGray900 =>
      theme.textTheme.titleMedium!.karla.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumKarlaOnErrorContainer =>
      theme.textTheme.titleMedium!.karla.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumManrope =>
      theme.textTheme.titleMedium!.manrope.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppins =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFUITextOnErrorContainer =>
      theme.textTheme.titleMedium!.sFUIText.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBluegray30001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get titleSmallBluegray30001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray30001,
      );
  static get titleSmallInterPrimary =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get sFUIText {
    return copyWith(
      fontFamily: 'SF UI  Text',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get karla {
    return copyWith(
      fontFamily: 'Karla',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
