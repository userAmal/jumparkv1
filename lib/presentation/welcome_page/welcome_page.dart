import 'package:bouaouina_s_application2/presentation/activity_details_screen/activity_details_screen.dart';
import 'package:bouaouina_s_application2/presentation/booking_confirmation_page/booking_confirmation_page.dart';
import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/ticket_purchased_one_screen/ticket_purchased_one_screen.dart';
import 'package:bouaouina_s_application2/widgets/custom_bottom_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter_svg/svg.dart';

import '../welcome_page/widgets/jumpballcomponent_item_widget.dart';
import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnPrimaryContainer,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(context),
                      SizedBox(height: 43.v),
                      _buildTnd12501Hour(context),
                      SizedBox(height: 41.v),
                      Padding(
                        padding: EdgeInsets.only(left: 27.h),
                        child: Text(
                          "Browse activities",
                          style: CustomTextStyles.titleMediumGray900_1,
                        ),
                      ),
                      SizedBox(height: 26.v),
                      _buildJumpBallComponent(context),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 500.v),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          child: _buildBottomBar(context),
        ),
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

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 12, // Ajuster la marge horizontale
        vertical: 8, // Ajuster la marge verticale
      ),
      decoration: AppDecoration.outlineGray900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup146,
                  height: 32.adaptSize, // Ajuster la taille de l'image
                  width: 32.adaptSize, // Ajuster la taille de l'image
                  margin: EdgeInsets.only(
                    left: 4,
                    top: 15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10, // Ajuster l'espacement entre l'image et le texte
                  top: 18, // Ajuster la position verticale du texte
                  bottom: 8, // Ajuster la position verticale du texte
                ),
                child: Text(
                  "Hello, Mehdi!",
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(3.0), // Ajuster la marge des icônes
            child: Row(
              children: [
                SvgPicture.asset(
                  ImageConstant.imgForward,
                  height: 40.adaptSize, // Ajuster la taille de l'icône
                  width: 40.adaptSize, // Ajuster la taille de l'icône
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TicketPurchasedOneScreen()),
                    );
                  },
                  child: SvgPicture.asset(
                    ImageConstant.imgIconlyBoldScan,
                    height: 32.adaptSize, // Ajuster la taille de l'icône
                    width: 32.adaptSize, // Ajuster la taille de l'icône
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
  Widget _buildTodaySDeals(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ActivityDetailsScreen(),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Today’s deals",
            style: CustomTextStyles.titleMediumGray900_1,
          ),
          SizedBox(height: 24.v),
          Container(
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle33,
                  height: 147.v,
                  width: 215.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Column(
                    children: [
                      Text(
                        "Ninja Parkour",
                        style: CustomTextStyles.titleMediumGray90001,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 204.h,
                    margin: EdgeInsets.only(
                      left: 11.h,
                      right: 4.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomOutlinedButton(
                          height: 28.v,
                          width: 104.h,
                          text: "TND 12.50/1 hour",
                          buttonTextStyle: CustomTextStyles.bodySmallPrimary,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.v),
                          child: Text(
                            "Professional",
                            style: CustomTextStyles.labelLargeRed300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.imgIcons,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 3.v,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "1",
                          style: CustomTextStyles
                              .bodySmallNotoSansOnErrorContainer,
                        ),
                      ),
                      Container(
                        width: 70.h,
                        margin: EdgeInsets.only(left: 21.h),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              ImageConstant.imgIconsGray60001,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                top: 3.v,
                                bottom: 3.v,
                              ),
                              child: Text(
                                "60 min",
                                style: CustomTextStyles.bodySmallNotoSans_1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        ImageConstant.imgStar1,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          top: 3.v,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "5.0",
                          style: CustomTextStyles.bodySmallNotoSans_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTnd12501Hour(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 24.h),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTodaySDeals(context),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.only(
                  left: 28.h,
                  top: 46.v,
                ),
                color: appTheme.gray10001.withOpacity(0.55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Container(
                  height: 285.v,
                  width: 239.h,
                  padding: EdgeInsets.all(10.h),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder15,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 6.h,
                            bottom: 5.v,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                ImageConstant.imgIcons,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 8.h,
                                  top: 3.v,
                                  bottom: 3.v,
                                ),
                                child: Text(
                                  "1",
                                  style: CustomTextStyles
                                      .bodySmallNotoSansOnErrorContainer,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 84.h,
                            bottom: 8.v,
                          ),
                          child: Text(
                            "60 min",
                            style: CustomTextStyles.bodySmallNotoSans_1,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        ImageConstant.imgIconsGray60001,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.bottomLeft,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(right: 4.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle33147x215,
                                height: 147.v,
                                width: 215.h,
                                radius: BorderRadius.circular(
                                  15.h,
                                ),
                              ),
                              SizedBox(height: 15.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Text(
                                    "Kids Jumping",
                                    style:
                                        CustomTextStyles.titleMediumGray90001,
                                  ),
                                ),
                              ),
                              SizedBox(height: 11.v),
                              Container(
                                width: 204.h,
                                margin: EdgeInsets.only(left: 11.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomOutlinedButton(
                                      height: 28.v,
                                      width: 104.h,
                                      text: "TND 9.50/1 hour",
                                      buttonTextStyle:
                                          CustomTextStyles.bodySmallPrimary,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 6.v),
                                      child: Text(
                                        "Starter level",
                                        textAlign: TextAlign.right,
                                        style:
                                            CustomTextStyles.labelLargeRed300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 18.v),
                              Padding(
                                padding: EdgeInsets.only(right: 9.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SvgPicture.asset(
                                      ImageConstant.imgStar116x16,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text(
                                        "5.0",
                                        style: CustomTextStyles
                                            .bodySmallNotoSans_1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildJumpBallComponent(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          right: 21.h,
        ),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Opacity(
              opacity: 0.02,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 9.0.v),
                child: SizedBox(
                  width: 366.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color:
                        theme.colorScheme.onPrimaryContainer.withOpacity(0.36),
                  ),
                ),
              ),
            );
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return JumpballcomponentItemWidget();
          },
        ),
      ),
    );
  }
}
