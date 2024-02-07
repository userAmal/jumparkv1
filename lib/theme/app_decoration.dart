import 'package:flutter/material.dart';
import 'package:bouaouina_s_application2/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillDeepOrangeA => BoxDecoration(
        color: appTheme.deepOrangeA100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10001.withOpacity(0.55),
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: appTheme.gray10001.withOpacity(0.46),
      );
  static BoxDecoration get fillGray100011 => BoxDecoration(
        color: appTheme.gray10001.withOpacity(0.45),
      );
  static BoxDecoration get fillGray100012 => BoxDecoration(
        color: appTheme.gray10001,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: appTheme.gray900.withOpacity(0.81),
      );
  static BoxDecoration get fillOnErrorContainer => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange300.withOpacity(0.25),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );

  // Gradient decorations
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 0.37),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer1 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 0.94),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0),
            theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToOnPrimaryContainer2 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 0.32),
          colors: [
            theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
            theme.colorScheme.onPrimaryContainer.withOpacity(0.2),
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToPink => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 0),
          end: Alignment(0, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(1),
            appTheme.pink400,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToPink400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, 0),
          end: Alignment(0, 1),
          colors: [
            theme.colorScheme.primary.withOpacity(1),
            appTheme.pink400,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray60001.withOpacity(0.28),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray900 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray900.withOpacity(0.04),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              12,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOrange => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get circleBorder27 => BorderRadius.circular(
        27.h,
      );
  static BorderRadius get circleBorder38 => BorderRadius.circular(
        38.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL8 => BorderRadius.only(
        topLeft: Radius.circular(8.h),
        topRight: Radius.circular(8.h),
        bottomLeft: Radius.circular(8.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder32 => BorderRadius.circular(
        32.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
