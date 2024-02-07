import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding 0 | Light",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboarding0LightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding 1 | Light",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboarding1LightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Onboarding 2 | Light",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onboarding2LightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login 1 | Light - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.login1LightTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verify account | Light",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verifyAccountLightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verify account | Code | Light",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verifyAccountCodeLightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Verify account | Finish ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.verifyAccountFinishScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Activity details",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.activityDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add and manage guests One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addAndManageGuestsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add and manage guests Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addAndManageGuestsTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add and manage guests",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addAndManageGuestsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Ticket purchased",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ticketPurchasedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "My wallet",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.myWalletScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Find us",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.findUsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Safety",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.safetyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Support| Messages",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.supportMessagesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Ticket purchased One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ticketPurchasedOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: " Panier",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.panier),
                        ),
                      ],
                    ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
