import 'dart:ui';

import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/onboarding_0_light_screen/onboarding_0_light_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 15), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboarding0LightScreen()),
      );
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: SingleChildScrollView(
          child: Container(
            height: SizeUtils.height,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 34.h,
              vertical: 280.v, // Adjust this value as needed
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 270.adaptSize,
                    width: 270.adaptSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150.h),
                      gradient: LinearGradient(
                        begin: Alignment(0.66, -0.07),
                        end: Alignment(0.5, 1),
                        colors: [
                          theme.colorScheme.primary.withOpacity(0.3),
                          appTheme.red30099,
                          appTheme.pink400.withOpacity(0.3),
                        ],
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                      child: Container(
                        height: 450.adaptSize,
                        width: 450.adaptSize,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                _buildWidgetSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(
          horizontal: 73.h,
          vertical: 80.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup10221,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 11.v),
            CustomImageView(
              imagePath: ImageConstant.imgGroupe2,
              height: 135.v,
              width: 197.h,
            ),
            SizedBox(
              height: 10,
            ), // Add space between the image and the button
          ],
        ),
      ),
    );
  }
}
