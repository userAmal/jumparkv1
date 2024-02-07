import 'dart:io';

import 'package:bouaouina_s_application2/presentation/panier/panier.dart';
import 'package:flutter/material.dart';
import 'package:bouaouina_s_application2/presentation/splash_screen/splash_screen.dart';
import 'package:bouaouina_s_application2/presentation/onboarding_0_light_screen/onboarding_0_light_screen.dart';
import 'package:bouaouina_s_application2/presentation/onboarding_1_light_screen/onboarding_1_light_screen.dart';
import 'package:bouaouina_s_application2/presentation/onboarding_2_light_screen/onboarding_2_light_screen.dart';
import 'package:bouaouina_s_application2/presentation/login_1_light_tab_container_screen/login_1_light_tab_container_screen.dart';
import 'package:bouaouina_s_application2/presentation/verify_account_light_screen/verify_account_light_screen.dart';
import 'package:bouaouina_s_application2/presentation/verify_account_code_light_screen/verify_account_code_light_screen.dart';
import 'package:bouaouina_s_application2/presentation/verify_account_finish_screen/verify_account_finish_screen.dart';
import 'package:bouaouina_s_application2/presentation/welcome_container_screen/welcome_container_screen.dart';
import 'package:bouaouina_s_application2/presentation/activity_details_screen/activity_details_screen.dart';
import 'package:bouaouina_s_application2/presentation/add_and_manage_guests_one_screen/add_and_manage_guests_one_screen.dart';
import 'package:bouaouina_s_application2/presentation/add_and_manage_guests_two_screen/add_and_manage_guests_two_screen.dart';
import 'package:bouaouina_s_application2/presentation/add_and_manage_guests_screen/add_and_manage_guests_screen.dart';
import 'package:bouaouina_s_application2/presentation/ticket_purchased_screen/ticket_purchased_screen.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/support_messages_screen/support_messages_screen.dart';
import 'package:bouaouina_s_application2/presentation/ticket_purchased_one_screen/ticket_purchased_one_screen.dart';
import 'package:bouaouina_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:bouaouina_s_application2/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:bouaouina_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String panier = '/panier';

  static const String splashScreen = '/splash_screen';
  static const String onboarding0LightScreen = '/onboarding_0_light_screen';
  static const String onboarding1LightScreen = '/onboarding_1_light_screen';
  static const String onboarding2LightScreen = '/onboarding_2_light_screen';
  static const String login1LightPage = '/login_1_light_page';
  static const String login1LightTabContainerScreen =
      '/login_1_light_tab_container_screen';
  static const String signUpPage = '/sign_up_page';
  static const String verifyAccountLightScreen = '/verify_account_light_screen';
  static const String verifyAccountCodeLightScreen =
      '/verify_account_code_light_screen';
  static const String verifyAccountFinishScreen =
      '/verify_account_finish_screen';
  static const String welcomePage = '/welcome_page';
  static const String welcomeContainerScreen = '/welcome_container_screen';
  static const String activityDetailsScreen = '/activity_details_screen';
  static const String bookingConfirmationPage = '/booking_confirmation_page';
  static const String addAndManageGuestsOneScreen =
      '/add_and_manage_guests_one_screen';
  static const String addAndManageGuestsTwoScreen =
      '/add_and_manage_guests_two_screen';
  static const String addAndManageGuestsScreen =
      '/add_and_manage_guests_screen';
  static const String ticketPurchasedScreen = '/ticket_purchased_screen';
  static const String myWalletScreen = '/my_wallet_screen';
  static const String findUsScreen = '/find_us_screen';
  static const String safetyScreen = '/safety_screen';
  static const String supportMessagesScreen = '/support_messages_screen';
  static const String ticketPurchasedOneScreen = '/ticket_purchased_one_screen';
  static const String profileScreen = '/profile_screen';
  static const String profileOneScreen = '/profile_one_screen';
  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboarding0LightScreen: (context) => Onboarding0LightScreen(),
    onboarding1LightScreen: (context) => Onboarding1LightScreen(),
    onboarding2LightScreen: (context) => Onboarding2LightScreen(),
    login1LightTabContainerScreen: (context) => Login1LightTabContainerScreen(),
    verifyAccountLightScreen: (context) => VerifyAccountLightScreen(),
    verifyAccountCodeLightScreen: (context) => VerifyAccountCodeLightScreen(),
    verifyAccountFinishScreen: (context) => VerifyAccountFinishScreen(),
    welcomeContainerScreen: (context) => WelcomeContainerScreen(),
    activityDetailsScreen: (context) => ActivityDetailsScreen(),
    addAndManageGuestsOneScreen: (context) => AddAndManageGuestsOneScreen(),
    addAndManageGuestsTwoScreen: (context) => AddAndManageGuestsTwoScreen(),
    addAndManageGuestsScreen: (context) => AddAndManageGuestsScreen(),
    ticketPurchasedScreen: (context) => TicketPurchasedScreen(),
    myWalletScreen: (context) => MyWalletScreen(),
    findUsScreen: (context) => FindUsScreen(),
    safetyScreen: (context) => SafetyScreen(),
    supportMessagesScreen: (context) => SupportMessagesScreen(),
    ticketPurchasedOneScreen: (context) => TicketPurchasedOneScreen(),
    profileScreen: (context) => ProfileScreen(),
    profileOneScreen: (context) => ProfileOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    panier: (context) => Panier(),
  };
}
