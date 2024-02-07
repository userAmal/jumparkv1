import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/booking_confirmation_page/booking_confirmation_page.dart';
import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:bouaouina_s_application2/presentation/ticket_purchased_one_screen/ticket_purchased_one_screen.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:bouaouina_s_application2/widgets/custom_bottom_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SafetyScreen extends StatelessWidget {
  SafetyScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                  SizedBox(height: 20.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle557,
                    height: 200.v,
                    width: 370.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Container(
                    width: 367.h,
                    margin: EdgeInsets.only(
                      left: 24.h,
                      right: 23.h,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Jumpark is designed for everyone, and we want to make sure you fly safe. We ask that you become familiar with and abide by the rules below and view the Jumpark rules video and signage in park and at the Safety Zone. Remember, stay in your comfort zone. Do not attempt any activity, flip, jump, or trick you don’t think you can handle. Flips or other tricks can be dangerous, so perform at your own risk. Jumpers should not engage in court activities without a Jumpark Team Member present. Failure to adhere to any of these or other rules at Jumpark can/will result in the loss of your jump time. Thank you for always following our safety guidelines.\n",
                            style: CustomTextStyles.bodySmallPoppinsba222222,
                          ),
                          TextSpan(
                            text: "\n",
                            style: CustomTextStyles.bodySmallPoppinsff777777
                                .copyWith(
                              height: 1.65,
                            ),
                          ),
                          TextSpan(
                            text:
                                "The well-being and safety of our Guests and Team Members is our first priority.",
                            style: CustomTextStyles.labelMediumff200e32,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "Please enter your full name",
                        style: CustomTextStyles.bodyMediumBluegray200,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      right: 23.h,
                    ),
                    child: CustomTextFormField(
                      controller: fullNameController,
                      hintText: "Jane Doe",
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                  SizedBox(height: 28.v),
                  CustomElevatedButton(
                    text: "Accept terms",
                    margin: EdgeInsets.only(
                      left: 21.h,
                      right: 33.h,
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
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Safety note",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                Text(
                  "Please read and accept",
                  style: CustomTextStyles.bodySmallPoppins,
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            ImageConstant.imgFavoritePrimary,
            height: 44.adaptSize,
            width: 44.adaptSize,
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
