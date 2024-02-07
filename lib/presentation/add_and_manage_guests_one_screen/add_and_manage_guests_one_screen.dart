import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/ticket_purchased_one_screen/ticket_purchased_one_screen.dart';
import 'package:flutter_svg/svg.dart';

import '../add_and_manage_guests_one_screen/widgets/userprofile_item_widget.dart';
import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/booking_confirmation_page/booking_confirmation_page.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_bottom_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_drop_down.dart';
import 'package:bouaouina_s_application2/widgets/custom_outlined_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddAndManageGuestsOneScreen extends StatelessWidget {
  AddAndManageGuestsOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  List<String> dropdownItemList1 = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                                left: 14,
                                top: 1,
                              ),
                              child: Text(
                                "Back to booking",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        _buildFrame(context),
                        SizedBox(height: 26),
                        Padding(
                          padding: EdgeInsets.only(left: 11),
                          child: Text(
                            "Guest full name",
                            style: CustomTextStyles.bodyMediumBluegray200,
                          ),
                        ),
                        SizedBox(height: 12),
                        _buildFullName(context),
                        SizedBox(height: 26),
                        _buildPhoneNumber(context),
                        SizedBox(height: 34),
                        _buildAddGuest(context),
                        SizedBox(height: 52),
                        Divider(
                          indent: 11,
                          endIndent: 25,
                        ),
                        SizedBox(height: 18),
                        Padding(
                          padding: EdgeInsets.only(left: 11),
                          child: Text(
                            "My List ",
                            style: CustomTextStyles.bodySmallPoppins,
                          ),
                        ),
                        SizedBox(height: 13),
                        _buildUserProfile(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  Widget _buildFixedPart(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back, size: 20),
            onPressed: () {
              Navigator.pop(
                context,
                ModalRoute.withName('/booking_confirmation_page'),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14,
              top: 2,
            ),
            child: Text(
              "Back to booking",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
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

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      width: 358.h,
      margin: EdgeInsets.only(
        left: 11.h,
        right: 25.h,
      ),
      decoration: AppDecoration.outlineOrange,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            "Invite guest",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 4.v),
          Text(
            "Invite new people !",
            style: CustomTextStyles.bodySmallPoppins,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 17.h,
      ),
      child: CustomTextFormField(
        controller: fullNameController,
        hintText: "Maria Doe",
        textInputAction: TextInputAction.done,
        alignment: Alignment.center,
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyThree(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phone number",
            style: CustomTextStyles.bodyMediumBluegray200,
          ),
          SizedBox(height: 14.v),
          CustomDropDown(
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 16.v, 14.h, 14.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            hintText: "Membership category",
            items: dropdownItemList,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 11.h,
          right: 17.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSeventyThree(context),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 31.v,
              ),
              child: CustomDropDown(
                width: 150.h,
                icon: Container(
                  margin: EdgeInsets.fromLTRB(20.h, 15.v, 10.h, 15.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                hintText: "Age",
                items: dropdownItemList1,
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddGuest(BuildContext context) {
    return CustomOutlinedButton(
      height: 51.v,
      text: "Add guest",
      margin: EdgeInsets.only(
        left: 11.h,
        right: 22.h,
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray60001,
      alignment: Alignment.center,
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 25.h,
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 15.v,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return UserprofileItemWidget();
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
