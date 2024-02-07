import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/panier/ActiviteTickets.dart';
import 'package:bouaouina_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/ticket_purchased_one_screen/ticket_purchased_one_screen.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/widgets/jumpballcomponent_item_widget.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter_svg/svg.dart';

import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';

import 'package:bouaouina_s_application2/widgets/custom_bottom_bar.dart';

import 'package:flutter/material.dart';

class Panier extends StatelessWidget {
  Panier({Key? key})
      : super(
          key: key,
        );
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
                      SizedBox(height: 41.v),
                      Padding(
                        padding: EdgeInsets.only(left: 27.h),
                        child: Row(
                          children: [
                            Text(
                              "Panier",
                              style: CustomTextStyles.titleMediumGray900_1,
                            ),
                            SizedBox(
                                width:
                                    273), // Espace entre le texte et l'icône, ajustez selon vos besoins
                            Icon(
                              Icons.shopping_cart,
                              size: 32.adaptSize,
                              color: Colors.orange,
                            ),
                          ],
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "100",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        CustomElevatedButton(
          onPressed: () {},
          text: "Get Tickets",
          margin: EdgeInsets.only(
            left: 10.h,
            right: 10.h,
          ),
          alignment: Alignment.center,
        ),
        SizedBox(
          height: 20,
        ),
        CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.of(context).pushNamed(getCurrentRoute(type));
          },
        ),
      ],
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
                GestureDetector(
                  onTap: () {
                    // Add your action when the Panier icon is tapped
                    Navigator.pushNamed(context, AppRoutes.panier);
                  },
                  child: Icon(
                    Icons.shopping_cart, // Use the appropriate icon
                    size: 32.adaptSize,
                    color: Colors.black, // Customize the color as needed
                  ),
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
            return ActiviteTickets();
          },
        ),
      ),
    );
  }
}
