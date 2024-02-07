import 'dart:ui';

import 'package:bouaouina_s_application2/presentation/login_1_light_page/login_1_light_page.dart';
import 'package:bouaouina_s_application2/presentation/login_1_light_tab_container_screen/login_1_light_tab_container_screen.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';

import '../onboarding_2_light_screen/widgets/frame1_item_widget.dart';
import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding2LightScreen extends StatelessWidget {
  Onboarding2LightScreen({Key? key}) : super(key: key);

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 69.v),
              _buildMainStack(context),
              SizedBox(height: 6.v),
              _buildOnboardingStack(context),
              SizedBox(height: 20.0), // Ajout du padding en bas
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainStack(BuildContext context) {
    return Container(
      height: 417.v,
      width: 402.h,
      padding: EdgeInsets.only(bottom: 20.0), // Ajout du padding en bas
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 310.adaptSize,
                width: 310.adaptSize,
                margin: EdgeInsets.only(top: 64.v),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(133.h),
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
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: Container(
                  height: 450.adaptSize,
                  width: 450.adaptSize,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 23.h,
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
            imagePath: ImageConstant.imgRe3562,
            height: 395.v,
            width: 358.h,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingStack(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 20.v, // Reduce the vertical padding
      ),
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer,
      child: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 200.v, // Adjust the height
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                sliderIndex = index;
              },
            ),
            itemCount: 2,
            itemBuilder: (context, index, realIndex) {
              return Frame1ItemWidget();
            },
          ),
          SizedBox(
              height:
                  10.v), // Reduce the spacing between CarouselSlider and dots
          SizedBox(
            height: 12.v,
            child: AnimatedSmoothIndicator(
              activeIndex: 2,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 8,
                activeDotColor:
                    appTheme.gray60001, // Set the color for the last dot (gray)
                dotColor: appTheme
                    .orange300, // Set the color for the first two dots (orange)
                dotHeight: 12.v,
                dotWidth: 12.h,
              ),
            ),
          ),

          SizedBox(height: 15.v), // Adjust the spacing between dots and button
          CustomElevatedButton(
            width: 180.h,
            text: "Let's jumpark",
            margin: EdgeInsets.only(left: 78.h),
            buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
            alignment: Alignment.centerLeft,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login1LightTabContainerScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
