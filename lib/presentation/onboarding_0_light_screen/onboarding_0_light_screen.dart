import 'dart:ui';

import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/onboarding_1_light_screen/onboarding_1_light_screen.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding0LightScreen extends StatelessWidget {
  const Onboarding0LightScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _buildContentSection(context),
              _buildViewSection(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContentSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 32.h,
          vertical: 20.v,
        ),
        decoration:
            AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Book activities".toUpperCase(),
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 10.v),
            SizedBox(
              width: 348.h,
              child: Text(
                "At JUMPark we have activities for all ages!\r. We’re always working to invent epic new ways to play, gather, and compete.",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumPoppinsGray900.copyWith(
                  height: 1.71,
                ),
              ),
            ),
            SizedBox(height: 100.v),
            SizedBox(
              height: 12.v,
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                count: 3,
                effect: ScrollingDotsEffect(
                  spacing: 8,
                  activeDotColor: appTheme.gray60001,
                  dotColor: appTheme.orange300,
                  dotHeight: 12.v,
                  dotWidth: 12.h,
                ),
              ),
            ),
            SizedBox(height: 15.v),
            CustomElevatedButton(
              width: 180.h,
              text: "Next",
              margin: EdgeInsets.only(left: 84.h),
              buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
              alignment: Alignment.centerLeft,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Onboarding1LightScreen(),
                  ),
                );
              },
            ),
            SizedBox(
                height: 50
                    .v), // Ajout d'un espace entre le bouton et le bas de la pile
          ],
        ),
      ),
    );
  }

  Widget _buildViewSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 421.v,
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 85.v),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 267.adaptSize,
                width: 267.adaptSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    133.h,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.66, -0.07),
                    end: Alignment(0.5, 1),
                    colors: [
                      theme.colorScheme.primary.withOpacity(0.6),
                      appTheme.red30099,
                      appTheme.pink400.withOpacity(0.6),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                  left: 6.h,
                  right: 6.h,
                  bottom: 20.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 108.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: fs.Svg(
                      ImageConstant.imgGroup6,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 39.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgFlipFly,
                      height: 100.v,
                      width: 354.h,
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgAq4531,
              height: 421.v,
              width: 414.h,
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
