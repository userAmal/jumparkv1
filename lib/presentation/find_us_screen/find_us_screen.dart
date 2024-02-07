import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/booking_confirmation_page/booking_confirmation_page.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/ticket_purchased_one_screen/ticket_purchased_one_screen.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:bouaouina_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FindUsScreen extends StatelessWidget {
  FindUsScreen({Key? key})
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
                  SizedBox(height: 30.v),
                  _buildFrame(context),
                  SizedBox(height: 15.v),
                  Container(
                    height: 472.v,
                    width: 413.h,
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer2,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMapPattern,
                          height: 462.v,
                          width: 413.h,
                          alignment: Alignment.center,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: 76.adaptSize,
                            width: 76.adaptSize,
                            margin: EdgeInsets.only(
                              left: 154.h,
                              top: 166.v,
                            ),
                            padding: EdgeInsets.all(16.h),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder38,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgLinkedinOnprimarycontainer,
                              height: 44.adaptSize,
                              width: 44.adaptSize,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 31.v),
                  _buildPointAndLevel(context),
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
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find us",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 5.v),
                Text(
                  "See our location",
                  style: CustomTextStyles.bodySmallPoppins,
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            ImageConstant.imgLinkedinPrimary,
            height: 44.adaptSize,
            width: 44.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPointAndLevel(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.symmetric(vertical: 20.v),
      decoration: AppDecoration.fillGray100011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address",
                  style: CustomTextStyles.bodySmallPoppinsBlack900,
                ),
                SizedBox(
                  width: 126.h,
                  child: Text(
                    "Route A, La soukra\n2072 Tunis",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMediumPoppins,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 62.v,
            child: VerticalDivider(
              width: 1.h,
              thickness: 1.v,
              color: appTheme.black900.withOpacity(0.5),
              indent: 3.h,
              endIndent: 6.h,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Contact",
                style: CustomTextStyles.bodySmallPoppinsBlack900,
              ),
              SizedBox(
                width: 123.h,
                child: Text(
                  "+216 22 000 000\nhello@jumpark.tn",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumPoppins,
                ),
              ),
            ],
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
}
