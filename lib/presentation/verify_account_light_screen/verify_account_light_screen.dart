import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_phone_number.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

class VerifyAccountLightScreen extends StatelessWidget {
  VerifyAccountLightScreen({Key? key})
      : super(
          key: key,
        );

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('216');

  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 21.h,
            top: 96.v,
            right: 21.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Verify my account",
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 17.v),
              Container(
                width: 318.h,
                margin: EdgeInsets.only(
                  left: 3.h,
                  right: 51.h,
                ),
                child: Text(
                  "Please type your email, then we’ll send a verification\ncode for authentication.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              SizedBox(height: 57.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  "Phone number",
                  style: CustomTextStyles.bodyMediumBluegray200,
                ),
              ),
              SizedBox(height: 12.v),
              CustomPhoneNumber(
                country: selectedCountry,
                controller: phoneNumberController,
                onTap: (Country value) {
                  selectedCountry = value;
                },
              ),
              SizedBox(height: 31.v),
              CustomElevatedButton(
                text: "Send verification code",
                margin: EdgeInsets.symmetric(horizontal: 6.h),
              ),
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
          top: 16.v,
          bottom: 16.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "Sign Up",
        margin: EdgeInsets.only(left: 14.h),
      ),
    );
  }
}
