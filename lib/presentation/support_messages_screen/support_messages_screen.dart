import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_icon_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SupportMessagesScreen extends StatelessWidget {
  SupportMessagesScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 47.v),
              Expanded(
                child: SingleChildScrollView(
                  child: _buildSupportMessages(context),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildMessage(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup146,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 41.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarSubtitleOne(
        text: "Hello, Mehdi !",
        margin: EdgeInsets.only(
          left: 15.h,
          top: 51.v,
          bottom: 26.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgForwardPrimary,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 36.v,
            right: 15.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconlyBoldScan,
          margin: EdgeInsets.fromLTRB(11.h, 47.v, 35.h, 10.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildSupportMessages(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.v),
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                SizedBox(
                  height: 48.v,
                  width: 293.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 4.v),
                          child: Text(
                            "Have a question for us before you get jumping?",
                            style: CustomTextStyles.bodySmallBluegray600,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              decoration: AppDecoration.gradientPrimaryToPink400
                                  .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder24,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgImage,
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                radius: BorderRadius.circular(
                                  24.h,
                                ),
                                alignment: Alignment.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 11.h,
                                top: 4.v,
                                bottom: 21.v,
                              ),
                              child: Text(
                                "Jumpark team",
                                style: CustomTextStyles.titleMediumBlack900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 31.h),
                  child: CustomIconButton(
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    padding: EdgeInsets.all(10.h),
                    decoration: IconButtonStyleHelper.fillCyan,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFrame,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 58.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.fillSecondaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      SizedBox(
                        width: 167.h,
                        child: Text(
                          "qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallOnPrimaryContainer
                              .copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "16.04",
                          style: CustomTextStyles.bodySmallOnPrimaryContainer,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  margin: EdgeInsets.only(
                    left: 9.h,
                    top: 46.v,
                    bottom: 18.v,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage40x40,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onError,
                            borderRadius: BorderRadius.circular(
                              6.h,
                            ),
                            border: Border.all(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              width: 2.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 39.v),
          Container(
            width: 261.h,
            margin: EdgeInsets.only(
              left: 35.h,
              right: 74.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillGray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jumpark team",
                  style: CustomTextStyles.labelLargeSFProDisplayOrangeA200,
                ),
                SizedBox(height: 10.v),
                Container(
                  width: 212.h,
                  margin: EdgeInsets.only(right: 28.h),
                  child: Text(
                    "qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallGray900.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "16.04",
                    style: CustomTextStyles.bodySmallBluegray300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 17.h,
        right: 42.h,
        bottom: 51.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Container(
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.5,
              child: CustomImageView(
                imagePath: ImageConstant.imgSettings,
                height: 26.adaptSize,
                width: 26.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 1.v),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: CustomTextFormField(
                  controller: messageController,
                  hintText: "Write a message...",
                  hintStyle: CustomTextStyles.bodySmallOnPrimary,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 7.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillBlack,
                  fillColor: appTheme.black900.withOpacity(0.04),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSave,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(
                left: 18.h,
                top: 1.v,
                bottom: 1.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
