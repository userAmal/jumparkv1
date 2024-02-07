import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/booking_confirmation_page/booking_confirmation_page.dart';
import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';

import 'package:bouaouina_s_application2/widgets/custom_bottom_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TicketPurchasedOneScreen extends StatelessWidget {
  TicketPurchasedOneScreen({Key? key}) : super(key: key);

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
              SizedBox(height: 31.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 27.h),
                    child: Column(
                      children: [
                        _buildFrameRow(context),
                        SizedBox(height: 30.v),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.h,
                            vertical: 23.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(ImageConstant.imgGroup10227),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Boarding pass",
                                            style: CustomTextStyles
                                                .labelMediumGray10001,
                                          ),
                                          Text(
                                            "NINJA PARKOUR".toUpperCase(),
                                            style:
                                                theme.textTheme.headlineMedium,
                                          ),
                                          SizedBox(height: 1.v),
                                          SizedBox(
                                            width: 208.h,
                                            child: Text(
                                              "Take on a variety of obstacles in a test of speed, strength, and agility. Test your skills and compete against your friends",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.justify,
                                              style: CustomTextStyles
                                                  .bodySmallGray10001
                                                  .copyWith(
                                                height: 1.41,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle556,
                                      height: 72.v,
                                      width: 90.h,
                                      radius: BorderRadius.circular(
                                        13.h,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 49.v),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 83.h),
                                padding: EdgeInsets.all(22.h),
                                decoration: AppDecoration.fillOnPrimaryContainer
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder32,
                                ),
                                child: QrImageView(
                                  data: 'https://www.google.com',
                                  size: 115.adaptSize,
                                ),
                              ),
                              SizedBox(height: 15.v),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40.h),
                                child: _buildNumberOfTicketsRow(
                                  context,
                                  numberOfTickets: "Full Name",
                                  ticketCount: "David Morgan",
                                ),
                              ),
                              SizedBox(height: 10.v),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40.h),
                                child: _buildNumberOfTicketsRow(
                                  context,
                                  numberOfTickets: "Number of tickets",
                                  ticketCount: "4 Tickets",
                                ),
                              ),
                              SizedBox(height: 17.v),
                              Divider(
                                color: appTheme.black900.withOpacity(0.5),
                                indent: 40.h,
                                endIndent: 40.h,
                              ),
                              SizedBox(height: 43.v),
                              Text(
                                "Booking code: JMP0214",
                                style: CustomTextStyles
                                    .titleSmallSFProDisplayGray900,
                              ),
                              SizedBox(height: 13.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup10225,
                                height: 34.v,
                                width: 223.h,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 38.v),
                        CustomElevatedButton(
                          text: "Go to my wallet",
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
              SvgPicture.asset(
                ImageConstant.imgIconlyBoldScanPrimary,
                height: 32.adaptSize, // Ajuster la taille de l'icône
                width: 32.adaptSize, // Ajuster la taille de l'icône
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Latest purchased ticket",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 5.v),
              Text(
                "Present this ticket when you go",
                style: CustomTextStyles.bodySmallPoppins,
              ),
            ],
          ),
          SvgPicture.asset(
            ImageConstant.imgIconlyBoldScanBlueGray200,
            height: 32.adaptSize,
            width: 32.adaptSize,
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
  Widget _buildNumberOfTicketsRow(
    BuildContext context, {
    required String numberOfTickets,
    required String ticketCount,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          numberOfTickets,
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
