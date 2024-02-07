import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/panier/panier.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/splash_screen/splash_screen.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          home: SplashScreen(),
          theme: theme,
          title: 'jumpark',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.splashScreen,
          routes: {
            //          // your home page route
            // '/login_1_Light_Page': (context) => Login1LightPage(),  // your login page route
            // // add more routes as needed
            AppRoutes.splashScreen: (context) => SplashScreen(),
            AppRoutes.welcomePage: (context) => WelcomePage(),
            AppRoutes.panier: (context) => Panier(),
            AppRoutes.findUsScreen: (context) => FindUsScreen(),
            AppRoutes.myWalletScreen: (context) => MyWalletScreen(),
            AppRoutes.safetyScreen: (context) => SafetyScreen(),
          },
        );
      },
    );
  }
}
