import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/login_1_light_page/login_1_light_page.dart';
import 'package:bouaouina_s_application2/presentation/sign_up_page/sign_up_page.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Login1LightTabContainerScreen extends StatefulWidget {
  const Login1LightTabContainerScreen({Key? key}) : super(key: key);

  @override
  Login1LightTabContainerScreenState createState() =>
      Login1LightTabContainerScreenState();
}

class Login1LightTabContainerScreenState
    extends State<Login1LightTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 28.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 735.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        Login1LightPage(),
                        SignUpPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(height: 0),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 50.v, // Adjust the height of the AppBar
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgAdd,
        margin: EdgeInsets.fromLTRB(24.h, 16.v, 366.h, 16.v),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 46.v,
      width: 366.h,
      decoration: BoxDecoration(
        color: appTheme.gray10001,
        borderRadius: BorderRadius.circular(
          12.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray900,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray60001,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        indicatorPadding: EdgeInsets.all(
          4.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.gray300,
          borderRadius: BorderRadius.circular(
            12.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Login",
            ),
          ),
          Tab(
            child: Text(
              "Sign up",
            ),
          ),
        ],
      ),
    );
  }
}
