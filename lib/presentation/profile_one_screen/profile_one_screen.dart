import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/booking_confirmation_page/booking_confirmation_page.dart';
import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:bouaouina_s_application2/widgets/custom_bottom_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_drop_down.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_icon_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_outlined_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileOneScreen extends StatelessWidget {
  ProfileOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameEditTextController = TextEditingController();

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
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildProfileImageStack(context),
                  SizedBox(height: 14.v),
                  _buildInviteAndManageColumn(context),
                  SizedBox(height: 26.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 31.h),
                      child: Text(
                        "Guest full name",
                        style: CustomTextStyles.bodyMediumBluegray200,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.v),
                  _buildFullNameEditText(context),
                  SizedBox(height: 26.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 31.h),
                      child: Text(
                        "Phone number",
                        style: CustomTextStyles.bodyMediumBluegray200,
                      ),
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildPhoneNumberRow(context),
                  SizedBox(height: 34.v),
                  _buildAddGuestButton(context),
                  SizedBox(height: 16.v),
                  Text(
                    "New memebers will be approved during your next check-in",
                    style: CustomTextStyles.bodySmallPoppinsOnErrorContainer8,
                  ),
                  SizedBox(height: 23.v),
                  Divider(
                    indent: 31.h,
                    endIndent: 25.h,
                  ),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 31.h),
                      child: Text(
                        "My List ",
                        style: CustomTextStyles.bodySmallPoppins,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  _buildMyUserRow(context),
                  SizedBox(height: 21.v),
                  _buildFrame(context),
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
  Widget _buildInviteAndManageColumn(BuildContext context) {
    return Container(
      width: 358.h,
      margin: EdgeInsets.only(
        left: 31.h,
        right: 25.h,
      ),
      decoration: AppDecoration.outlineOrange,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            "Invite and manage group",
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
  Widget _buildFullNameEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 31.h,
        right: 17.h,
      ),
      child: CustomTextFormField(
        controller: fullNameEditTextController,
        hintText: "Maria Doe",
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 31.h,
        right: 17.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomDropDown(
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
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: CustomDropDown(
              width: 94.h,
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
    );
  }

  /// Section Widget
  Widget _buildAddGuestButton(BuildContext context) {
    return CustomOutlinedButton(
      height: 51.v,
      text: "Add guest",
      margin: EdgeInsets.only(
        left: 31.h,
        right: 22.h,
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray60001,
    );
  }

  /// Section Widget
  Widget _buildPendingButton(BuildContext context) {
    return CustomElevatedButton(
      height: 18.v,
      width: 55.h,
      text: "Pending",
      margin: EdgeInsets.only(
        top: 7.v,
        bottom: 5.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryContainer,
      buttonTextStyle: CustomTextStyles.labelSmallSFProDisplayPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildMyUserRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 31.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 111.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: CustomIconButton(
                    height: 29.adaptSize,
                    width: 29.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVuesaxBulkProfileAddPrimary,
                    ),
                  ),
                ),
                _buildAdamSmithColumn(
                  context,
                  userName: "Adam Smith",
                  userRole: "Ninja member",
                ),
              ],
            ),
          ),
          _buildPendingButton(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEditButton(BuildContext context) {
    return CustomElevatedButton(
      height: 26.v,
      width: 61.h,
      text: "Edit",
      margin: EdgeInsets.only(top: 3.v),
      buttonStyle: CustomButtonStyles.fillSecondaryContainer,
      buttonTextStyle:
          CustomTextStyles.labelMediumSFProDisplaySecondaryContainer,
    );
  }

  /// Section Widget
  Widget _buildDeleteButton(BuildContext context) {
    return CustomElevatedButton(
      height: 26.v,
      width: 61.h,
      text: "Delete",
      margin: EdgeInsets.only(
        left: 14.h,
        top: 3.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryContainerTL81,
      buttonTextStyle: CustomTextStyles.labelMediumSFProDisplayPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 31.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 29.adaptSize,
            width: 29.adaptSize,
            padding: EdgeInsets.all(7.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgVuesaxBulkProfileAddPrimary,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: _buildAdamSmithColumn(
              context,
              userName: "Adam Smith",
              userRole: "Ninja member",
            ),
          ),
          Spacer(),
          _buildEditButton(context),
          _buildDeleteButton(context),
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
  Widget _buildAdamSmithColumn(
    BuildContext context, {
    required String userName,
    required String userRole,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: theme.textTheme.labelLarge!.copyWith(
            color: theme.colorScheme.onErrorContainer.withOpacity(1),
          ),
        ),
        SizedBox(height: 1.v),
        Text(
          userRole,
          style: CustomTextStyles.bodySmallNotoSans.copyWith(
            color: appTheme.gray60001,
          ),
        ),
      ],
    );
  }
}
