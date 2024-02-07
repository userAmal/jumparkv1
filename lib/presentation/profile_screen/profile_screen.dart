import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/booking_confirmation_page/booking_confirmation_page.dart';
import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:bouaouina_s_application2/widgets/custom_bottom_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildProfileImageStack(context),
                  SizedBox(height: 27.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Opacity(
                      opacity: 0.4,
                      child: Padding(
                        padding: EdgeInsets.only(left: 25.h),
                        child: Text(
                          "Account Setting ",
                          style: CustomTextStyles
                              .labelLargeSFProDisplayOnErrorContainer,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.h),
                    child: _buildChangeEmailRow(
                      context,
                      changeEmailText: "Change Password",
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Opacity(
                    opacity: 0.05,
                    child: Divider(
                      color: appTheme.gray60001.withOpacity(0.37),
                      indent: 25.h,
                      endIndent: 26.h,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.h),
                    child: _buildChangeEmailRow(
                      context,
                      changeEmailText: "Change Email",
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Opacity(
                    opacity: 0.05,
                    child: Divider(
                      color: appTheme.gray60001.withOpacity(0.37),
                      indent: 25.h,
                      endIndent: 26.h,
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 26.h,
                        right: 57.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Location",
                            style: CustomTextStyles.bodyMediumOnErrorContainer,
                          ),
                          Opacity(
                            opacity: 0.4,
                            child: Text(
                              "Tunis, Tunisia",
                              style:
                                  CustomTextStyles.bodyMediumOnErrorContainer15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Opacity(
                      opacity: 0.4,
                      child: Padding(
                        padding: EdgeInsets.only(left: 26.h),
                        child: Text(
                          "App Setting",
                          style: CustomTextStyles
                              .labelLargeSFProDisplayOnErrorContainer,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  _buildLanguageRow(context),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.h),
                    child: _buildChangeEmailRow(
                      context,
                      changeEmailText: "About Us",
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.h),
                    child: _buildChangeEmailRow(
                      context,
                      changeEmailText: "My group",
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Opacity(
                    opacity: 0.05,
                    child: Divider(
                      color: appTheme.gray60001.withOpacity(0.37),
                      indent: 25.h,
                      endIndent: 26.h,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  _buildMobileNotificationRow(context),
                  SizedBox(height: 10.v),
                  Opacity(
                    opacity: 0.05,
                    child: Divider(
                      color: appTheme.gray60001.withOpacity(0.37),
                      indent: 25.h,
                      endIndent: 26.h,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.h),
                    child: _buildChangeEmailRow(
                      context,
                      changeEmailText: "Sign Out",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileImageStack(BuildContext context) {
    return SizedBox(
      height: 247.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTenetTrailer1576819226168236x414,
            height: 236.v,
            width: 414.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 129.h,
                vertical: 1.v,
              ),
              decoration:
                  AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImg,
                    height: 76.adaptSize,
                    width: 76.adaptSize,
                    radius: BorderRadius.circular(
                      38.h,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "Mehdi Doe",
                    style: CustomTextStyles.headlineLargeBlack900,
                  ),
                  SizedBox(height: 5.v),
                  Opacity(
                    opacity: 0.6,
                    child: Text(
                      "mehdi@gmail.com",
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                  SizedBox(height: 34.v),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgForwardOnprimarycontainer,
            height: 24.v,
            width: 26.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(
              left: 30.h,
              top: 45.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 3.v,
            ),
            child: Text(
              "Language",
              style: CustomTextStyles.bodyMediumOnErrorContainer,
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.4,
            child: Padding(
              padding: EdgeInsets.only(
                top: 6.v,
                bottom: 3.v,
              ),
              child: Text(
                "English",
                style: CustomTextStyles.bodyMediumOnErrorContainer15,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 28.v,
            width: 31.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNotificationRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 6.v),
            child: Text(
              "Mobile Notification",
              style: CustomTextStyles.bodyMediumOnErrorContainer,
            ),
          ),
          CustomSwitch(
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.of(context).pushNamed(getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.welcomePage;
      case BottomBarEnum.Findus:
        return AppRoutes.findUsScreen;
      case BottomBarEnum.Wallet:
        return AppRoutes.myWalletScreen;
      case BottomBarEnum.Safety:
        return AppRoutes.safetyScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.welcomePage:
        return WelcomePage();
      case AppRoutes.myWalletScreen:
        return MyWalletScreen();
      case AppRoutes.safetyScreen:
        return SafetyScreen();
      case AppRoutes.findUsScreen:
        return FindUsScreen();
      default:
        return DefaultWidget();
    }
  }

  /// Common widget
  Widget _buildChangeEmailRow(
    BuildContext context, {
    required String changeEmailText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 6.v,
            bottom: 3.v,
          ),
          child: Text(
            changeEmailText,
            style: CustomTextStyles.bodyMediumOnErrorContainer.copyWith(
              color: theme.colorScheme.onErrorContainer.withOpacity(1),
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 28.v,
          width: 31.h,
        ),
      ],
    );
  }
}
