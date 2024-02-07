import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.56),
        fontSize: 15.fSize,
      );
  static get bodyMediumBluegray200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodyMediumOnErrorContainer15 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.49),
        fontSize: 15.fSize,
      );
  static get bodyMediumOnErrorContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins;
  static get bodyMediumPoppinsGray900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray900.withOpacity(0.73),
      );
  static get bodyMediumPurple500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.purple500,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodyMediumff777777 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF777777),
      );
  static get bodyMediumffa6aeb6 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFA6AEB6),
      );
  static get bodyMediumffc81cc5 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFC81CC5),
      );
  static get bodySmall8 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmallBluegray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodySmallBluegray300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray300,
      );
  static get bodySmallBluegray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodySmallGray10001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray10001.withOpacity(0.63),
        fontSize: 8.fSize,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900.withOpacity(0.73),
      );
  static get bodySmallGray90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900.withOpacity(0.5),
        fontSize: 10.fSize,
      );
  static get bodySmallNotoSans => theme.textTheme.bodySmall!.notoSans.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmallNotoSansGray900 =>
      theme.textTheme.bodySmall!.notoSans.copyWith(
        color: appTheme.gray900.withOpacity(0.73),
        fontSize: 8.fSize,
      );
  static get bodySmallNotoSansGray90001 =>
      theme.textTheme.bodySmall!.notoSans.copyWith(
        color: appTheme.gray90001,
      );
  static get bodySmallNotoSansOnErrorContainer =>
      theme.textTheme.bodySmall!.notoSans.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodySmallNotoSans_1 => theme.textTheme.bodySmall!.notoSans;
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodySmallPoppins => theme.textTheme.bodySmall!.poppins.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsBlack900 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallPoppinsGray10001 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: appTheme.gray10001,
      );
  static get bodySmallPoppinsOnErrorContainer =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsOnErrorContainer8 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 8.fSize,
      );
  static get bodySmallPoppinsba222222 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XBA222222),
        fontSize: 10.fSize,
      );
  static get bodySmallPoppinsff777777 =>
      theme.textTheme.bodySmall!.poppins.copyWith(
        color: Color(0XFF777777),
        fontSize: 10.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallce222222 => theme.textTheme.bodySmall!.copyWith(
        color: Color(0XCE222222),
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
        fontSize: 30.fSize,
      );
  static get headlineLargeGray60001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray60001,
      );
  static get headlineLargeGray900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get headlineLargeGreen600 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.green600,
      );
  static get headlineLargece222222 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XCE222222),
        fontSize: 30.fSize,
      );
  static get headlineMediumGray900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get headlineSmallPurple500 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.purple500,
        fontWeight: FontWeight.w500,
      );
  // Label text style
  static get labelLargePink400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.pink400,
      );
  static get labelLargePoppinsBlack900 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRed300 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red300,
      );
  static get labelLargeSFProDisplayOnErrorContainer =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(0.49),
        fontSize: 13.fSize,
      );
  static get labelLargeSFProDisplayOnPrimaryContainer =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProDisplayOnPrimaryContainerSemiBold =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.8),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSFProDisplayOrangeA200 =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: appTheme.orangeA200,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeSFProDisplayPrimary =>
      theme.textTheme.labelLarge!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray10001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray10001,
      );
  static get labelMediumGray60001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray60001,
      );
  static get labelMediumSFProDisplayOnPrimaryContainer =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get labelMediumSFProDisplayPrimary =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 11.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumSFProDisplayPrimaryContainer =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
      );
  static get labelMediumSFProDisplaySecondaryContainer =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get labelMediumSFProDisplayfffba442 =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: Color(0XFFFBA442),
        fontWeight: FontWeight.w700,
      );
  static get labelMediumSFProDisplayfffba442_1 =>
      theme.textTheme.labelMedium!.sFProDisplay.copyWith(
        color: Color(0XFFFBA442),
      );
  static get labelMediumff200e32 => theme.textTheme.labelMedium!.copyWith(
        color: Color(0XFF200E32),
      );
  static get labelSmallSFProDisplayPrimaryContainer =>
      theme.textTheme.labelSmall!.sFProDisplay.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBluegray200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray200,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray60001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
        fontSize: 16.fSize,
      );
  static get titleMediumGray900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumffffffff => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumffffffffExtraBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w800,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallSFProDisplayGray900 =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSFProDisplayGray900Bold =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: appTheme.gray900.withOpacity(0.81),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSFProDisplayOnPrimaryContainer =>
      theme.textTheme.titleSmall!.sFProDisplay.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallff000000 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get notoSans {
    return copyWith(
      fontFamily: 'Noto Sans',
    );
  }
}
