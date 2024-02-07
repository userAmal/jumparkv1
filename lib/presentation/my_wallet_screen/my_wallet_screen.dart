import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/ticket_purchased_one_screen/ticket_purchased_one_screen.dart';
import 'package:flutter_svg/svg.dart';

import '../my_wallet_screen/widgets/viewhierarchy_item_widget.dart';
import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/booking_confirmation_page/booking_confirmation_page.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:bouaouina_s_application2/widgets/custom_bottom_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class MyWalletScreen extends StatelessWidget {
  MyWalletScreen({Key? key})
      : super(
          key: key,
        );

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
                  _buildHeader(context),
                  SizedBox(height: 31.v),
                  _buildFrame(context),
                  SizedBox(height: 31.v),
                  _buildPointAndLevel(context),
                  SizedBox(height: 20.v),
                  _buildFrame1(context),
                  SizedBox(height: 20.v),
                  _buildViewHierarchy(context),
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
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 30.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My wallet",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                Text(
                  "View your balance and tickets",
                  style: CustomTextStyles.bodySmallPoppins,
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            ImageConstant.imgIconsPrimary44x44,
            height: 44.adaptSize,
            width: 44.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBuyJumpoints(BuildContext context) {
    return CustomOutlinedButton(
      height: 43.v,
      width: 124.h,
      text: "Buy jumpoints",
      margin: EdgeInsets.symmetric(vertical: 14.v),
      buttonStyle: CustomButtonStyles.outlineGrayTL8,
      buttonTextStyle:
          CustomTextStyles.titleSmallSFProDisplayOnPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildPointAndLevel(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.h,
        right: 27.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.gradientPrimaryToPink.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 9.v),
          Container(
            margin: EdgeInsets.only(right: 1.h),
            decoration: AppDecoration.gradientPrimaryToPink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Jumpoints",
                      style: CustomTextStyles.bodySmallPoppinsGray10001,
                    ),
                    Text(
                      "192300",
                      style: theme.textTheme.displaySmall,
                    ),
                  ],
                ),
                SizedBox(
                  height: 71.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                    color: theme.colorScheme.onPrimaryContainer,
                    indent: 9.h,
                    endIndent: 9.h,
                  ),
                ),
                _buildBuyJumpoints(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          right: 42.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My tickets",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Browse your purchased tickets",
                  style: CustomTextStyles.bodySmallPoppins,
                ),
              ],
            ),
            CustomImageView(
              imagePath: ImageConstant.imgCar,
              height: 23.adaptSize,
              width: 23.adaptSize,
              margin: EdgeInsets.only(
                top: 10.v,
                bottom: 9.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 27.h,
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 16.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ViewhierarchyItemWidget();
        },
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
}
