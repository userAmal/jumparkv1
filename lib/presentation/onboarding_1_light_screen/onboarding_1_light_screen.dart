import 'dart:ui';

import 'package:bouaouina_s_application2/presentation/onboarding_2_light_screen/onboarding_2_light_screen.dart';

import '../onboarding_1_light_screen/widgets/frame_item_widget.dart';
import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding1LightScreen extends StatelessWidget {
  Onboarding1LightScreen({Key? key}) : super(key: key);

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
              _buildOnboardingContent(context),
              SizedBox(height: 20.0), // Ajout du padding en bas
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainStack(BuildContext context) {
    return Container(
      height: 426.v,
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150.h),
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
                vertical: 109.v,
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
                  SizedBox(height: 37.v),
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
            imagePath: ImageConstant.imgAw42321,
            height: 411.v,
            width: 313.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 24.h),
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer,
      child: Column(
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 200.v,
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
            itemCount: 1,
            itemBuilder: (context, index, realIndex) {
              return FrameItemWidget();
            },
          ),
          SizedBox(height: 10.v),
          SizedBox(
            height: 12.v,
            child: AnimatedSmoothIndicator(
              activeIndex: 2,
              count: 3,
              effect: ScrollingDotsEffect(
                spacing: 8,
                activeDotColor:
                    appTheme.orange300, // Default color for active dots
                dotColor: appTheme.gray60001, // Default color for inactive dots
                paintStyle: PaintingStyle.fill,
                strokeWidth: 1.5,
                dotHeight: 12.v,
                dotWidth: 12.h,
              ),
            ),
          ),

          SizedBox(height: 15.v), // Ajustez cet espacement selon vos besoins
          CustomElevatedButton(
            width: 180.h,
            text: "Next",
            margin: EdgeInsets.only(left: 78.h),
            buttonStyle: CustomButtonStyles.outlineSecondaryContainer,
            alignment: Alignment.centerLeft,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Onboarding2LightScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
