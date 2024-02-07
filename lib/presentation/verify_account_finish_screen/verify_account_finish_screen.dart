import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class VerifyAccountFinishScreen extends StatelessWidget {
  const VerifyAccountFinishScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 16.h,
            top: 95.v,
            right: 16.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "Enter the code",
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "Please type the verficication code sent  ",
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 10.h),
                child: Text(
                  "Resend code",
                  style: CustomTextStyles.bodyMediumPurple500,
                ),
              ),
              SizedBox(height: 29.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  right: 32.h,
                ),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 34.v),
              _buildComponentTwentySix(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 87.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup162,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 15.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Sign Up",
        margin: EdgeInsets.only(left: 14.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildComponentTwentySix(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 22.h),
      padding: EdgeInsets.symmetric(
        horizontal: 167.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder27,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgCheckmark,
        height: 24.adaptSize,
        width: 24.adaptSize,
      ),
    );
  }
}
