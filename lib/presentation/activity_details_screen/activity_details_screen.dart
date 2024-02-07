import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/booking_confirmation_page/booking_confirmation_page.dart';
import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:bouaouina_s_application2/widgets/custom_bottom_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_icon_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActivityDetailsScreen extends StatelessWidget {
  ActivityDetailsScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height, // Fixed height
          child: Column(
            children: [
              _buildTrampolineStack(context),
              SizedBox(height: 7.v),
              Container(
                width: 358.h,
                margin: EdgeInsets.symmetric(horizontal: 28.h),
                child: Text(
                  "Bounce. Fly. Repeat. What’s not to love about our giant Trampoline City?",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: CustomTextStyles.bodySmallPoppinsOnErrorContainer
                      .copyWith(
                    height: 1.65,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              _buildFrameRow(context),
              SizedBox(height: 29.v),
              _buildFrameRow1(context),
              SizedBox(height: 25.v),
              _buildTnd12501HourRow(context),
              SizedBox(height: 1.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: CustomElevatedButton(
                  text: "Book now !",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookingConfirmationPage(),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 1.v),
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

  Widget _buildTrampolineStack(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          top: 20.v,
          left: 20.h,
          child: GestureDetector(
            onTap: () {
              Navigator.popUntil(
                context,
                ModalRoute.withName('/welcome_page'),
              );
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup162, // <-- Change this line
              height: 24.v,
              width: 26.h,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgTenetTrailer1576819226168,
          height: 400.v,
          width: double.maxFinite,
          alignment: Alignment.center,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 82.v),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 10.v,
            ),
            decoration:
                AppDecoration.gradientOnPrimaryContainerToOnPrimaryContainer1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 225.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trampoline",
                        style: CustomTextStyles.headlineLargeBlack900,
                      ),
                      SizedBox(height: 4.v),
                      Opacity(
                        opacity: 0.8,
                        child: Text(
                          "Put yourself upside down!",
                          style: CustomTextStyles.bodyMediumBlack900,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 55,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgExclude,
                  height: 27.v,
                  width: 78.h,
                  margin: EdgeInsets.only(
                    top: 228.v,
                    bottom: 26.v,
                  ),
                ),
                Spacer(
                  flex: 44,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 212.v,
                    bottom: 11.v,
                  ),
                  child: CustomIconButton(
                    height: 60.v,
                    width: 63.h,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.outlineOnPrimaryContainer,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup164,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 0,
          right: 0,
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 28.h,
        right: 30.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 188.h,
            padding: EdgeInsets.symmetric(vertical: 12.v),
            decoration: AppDecoration.fillGray100011.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jumpoints",
                        style: CustomTextStyles.bodySmallPoppinsBlack900,
                      ),
                      Text(
                        "499",
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 38.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                    color: appTheme.black900.withOpacity(0.5),
                    indent: 4.h,
                    endIndent: 4.h,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Level",
                      style: CustomTextStyles.bodySmallPoppinsBlack900,
                    ),
                    Text(
                      "Medium",
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 85.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "TND\n",
                          style:
                              CustomTextStyles.labelMediumSFProDisplayfffba442,
                        ),
                        TextSpan(
                          text: "79.00 ",
                          style: CustomTextStyles.headlineLargece222222,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "or",
                        style: CustomTextStyles.bodySmallce222222,
                      ),
                      TextSpan(
                        text: "  499 Jumpoints",
                        style:
                            CustomTextStyles.labelMediumSFProDisplayfffba442_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Related activities",
                  style: CustomTextStyles.titleMediumBlack900_1,
                ),
                SizedBox(height: 5.v),
                Text(
                  "More activities to discover",
                  style: CustomTextStyles.bodySmallPoppins,
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            ImageConstant.imgClosePrimary,
            height: 50.adaptSize,
            width: 50.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTnd12501HourRow(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 13.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6.v),
                decoration: AppDecoration.fillGray10001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle36,
                      height: 91.v,
                      width: 81.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 7.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "Jump ball",
                              style: CustomTextStyles.titleMediumPrimary,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Container(
                            width: 241.h,
                            margin: EdgeInsets.only(left: 6.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomOutlinedButton(
                                  width: 100.h,
                                  text: "TND 12.50/1 hour",
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 4.v,
                                    bottom: 5.v,
                                  ),
                                  child: Text(
                                    "All levels",
                                    style: CustomTextStyles.labelLargePink400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 13.v),
                          SizedBox(
                            width: 300.h,
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
                                        .bodySmallNotoSansGray90001,
                                  ),
                                ),
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
                                    style: CustomTextStyles
                                        .bodySmallNotoSansGray90001,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  width: 43.h,
                                  margin: EdgeInsets.symmetric(vertical: 3.v),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset(
                                        ImageConstant.imgStar13,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                      ),
                                      Text(
                                        "5.0",
                                        style: CustomTextStyles
                                            .bodySmallNotoSansOnErrorContainer,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 11.h),
                padding: EdgeInsets.symmetric(vertical: 6.v),
                decoration: AppDecoration.fillGray10001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle36,
                      height: 91.v,
                      width: 81.h,
                      radius: BorderRadius.circular(
                        15.h,
                      ),
                      margin: EdgeInsets.symmetric(vertical: 5.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              "Jump ball",
                              style: CustomTextStyles.titleMediumPrimary,
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Container(
                            width: 241.h,
                            margin: EdgeInsets.only(left: 6.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomOutlinedButton(
                                  width: 100.h,
                                  text: "TND 12.50/1 hour",
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 4.v,
                                    bottom: 6.v,
                                  ),
                                  child: Text(
                                    "All levels",
                                    textAlign: TextAlign.right,
                                    style: CustomTextStyles.labelLargePink400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 13.v),
                          SizedBox(
                            width: 247.h,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                    bottom: 5.v,
                                  ),
                                  child: Text(
                                    "1",
                                    style: CustomTextStyles
                                        .bodySmallNotoSansGray90001,
                                  ),
                                ),
                                SvgPicture.asset(
                                  ImageConstant.imgIconsGray60001,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.h,
                                    top: 3.v,
                                    bottom: 5.v,
                                  ),
                                  child: Text(
                                    "60 min",
                                    style: CustomTextStyles
                                        .bodySmallNotoSansGray90001,
                                  ),
                                ),
                                Spacer(),
                                SvgPicture.asset(
                                  ImageConstant.imgStar14,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.h,
                                    top: 3.v,
                                    bottom: 5.v,
                                  ),
                                  child: Text(
                                    "5.0",
                                    style: CustomTextStyles
                                        .bodySmallNotoSansOnErrorContainer,
                                  ),
                                ),
                              ],
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
