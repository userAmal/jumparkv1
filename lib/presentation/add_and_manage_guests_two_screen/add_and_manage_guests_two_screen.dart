import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/booking_confirmation_page/booking_confirmation_page.dart';
import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/panier/panier.dart';
import 'package:bouaouina_s_application2/presentation/panier/panier.dart';
import 'package:bouaouina_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/ticket_purchased_one_screen/ticket_purchased_one_screen.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_bottom_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddAndManageGuestsTwoScreen extends StatelessWidget {
  AddAndManageGuestsTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 38.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.arrow_back, size: 20),
                                onPressed: () {
                                  Navigator.pop(
                                    context,
                                    ModalRoute.withName(
                                      '/booking_confirmation_page',
                                    ),
                                  );
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 14.h,
                                  top: 2.v,
                                ),
                                child: Text(
                                  "Back to booking",
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.v),
                        _buildFrame(context),
                        SizedBox(height: 40.v),
                        CustomElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.panier);
                          },
                          text: "Check out with Jumpoints 8700",
                          margin: EdgeInsets.only(
                            left: 15.h,
                            right: 19.h,
                          ),
                        ),
                        SizedBox(height: 25.v),
                        CustomOutlinedButton(
                          height: 51.v,
                          text: "Check out with credit cards",
                          margin: EdgeInsets.only(
                            left: 15.h,
                            right: 19.h,
                          ),
                          buttonStyle: CustomButtonStyles.outlineGray,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumGray60001,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(140), // Adjust the height as needed
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        decoration: AppDecoration.outlineGray900,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(context),
            // Add other elements to your appbar here if necessary
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
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
        SizedBox(
          width: 180,
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

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 6.h,
        right: 10.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.fillGray100012.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle556,
            height: 176.v,
            width: 338.h,
            radius: BorderRadius.circular(
              13.h,
            ),
            margin: EdgeInsets.only(left: 4.h),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Boarding pass",
              style: CustomTextStyles.labelMediumGray60001,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "NINJA PARKOUR".toUpperCase(),
              style: CustomTextStyles.headlineMediumGray900,
            ),
          ),
          Container(
            width: 208.h,
            margin: EdgeInsets.only(left: 4.h),
            child: Text(
              "Take on a variety of obstacles in a test of speed, strength, and agility. Test your skills and compete against your friends",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              style: CustomTextStyles.bodySmall8.copyWith(
                height: 1.41,
              ),
            ),
          ),
          SizedBox(height: 28.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: _buildTickets(
              context,
              ticketText: "Date",
              ticketCount: " 27 June at 10:00",
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: _buildTickets(
              context,
              ticketText: "Tickets",
              ticketCount: "7 Tickets",
            ),
          ),
          SizedBox(height: 8.v),
          Divider(
            indent: 4.h,
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: _buildTickets(
              context,
              ticketText: "Total to pay",
              ticketCount: " 356.00TND",
            ),
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTickets(
    BuildContext context, {
    required String ticketText,
    required String ticketCount,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          ticketText,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          ticketCount,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }
}
