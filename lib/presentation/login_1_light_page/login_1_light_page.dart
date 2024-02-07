import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/forgot_password/forgot_password.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore_for_file: must_be_immutable

class Login1LightPage extends StatefulWidget {
  const Login1LightPage({Key? key})
      : super(
          key: key,
        );

  @override
  Login1LightPageState createState() => Login1LightPageState();
}

class Login1LightPageState extends State<Login1LightPage>
    with AutomaticKeepAliveClientMixin<Login1LightPage> {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Column(
                  children: [
                    SizedBox(height: 43.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 23.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "Welcome back !",
                              style: CustomTextStyles.headlineLargeGray900,
                            ),
                          ),
                          SizedBox(height: 47.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "Email",
                              style: CustomTextStyles.bodyMediumBluegray200,
                            ),
                          ),
                          SizedBox(height: 12.v),
                          _buildEmailField(context),
                          SizedBox(height: 29.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "Password",
                              style: CustomTextStyles.bodyMediumBluegray200,
                            ),
                          ),
                          SizedBox(height: 12.v),
                          _buildPasswordField(context),
                          SizedBox(height: 8.v),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ForgetPassword()),
                              );
                            },
                            child: Text(
                              "Forgot password?",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          SizedBox(height: 20.v),
                          _buildLoginButton(context),
                          SizedBox(height: 21.v),
                          _buildDividerRow(context),
                          SizedBox(height: 20.v),
                          _buildGoogleButton(context),
                          SizedBox(height: 19.v),
                          _buildAppleButton(context),
                          SizedBox(height: 19.v),
                          _buildFacebookButton(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: emailFieldController,
        hintText: "Enter your email",
        hintStyle: CustomTextStyles.bodyMediumGray900_1,
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: CustomTextFormField(
        controller: passwordFieldController,
        hintText: "Enter your password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 5.v, 6.h, 5.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgClose,
            height: 44.adaptSize,
            width: 44.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 54.v,
        ),
        obscureText: true,
        contentPadding: EdgeInsets.only(
          left: 20.h,
          top: 18.v,
          bottom: 18.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Login",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WelcomePage()),
        );
      },
      margin: EdgeInsets.only(
        left: 1.h,
        right: 6.h,
      ),
    );
  }

  /// Section Widget
  Widget _buildDividerRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Opacity(
            opacity: 0.02,
            child: Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                bottom: 7.v,
              ),
              child: SizedBox(
                width: 134.h,
                child: Divider(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(0.36),
                ),
              ),
            ),
          ),
          Text(
            "Or login with ",
            style: theme.textTheme.bodyMedium,
          ),
          Opacity(
            opacity: 0.02,
            child: Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                bottom: 7.v,
              ),
              child: SizedBox(
                width: 134.h,
                child: Divider(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(0.36),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGoogleButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue with Google",
      margin: EdgeInsets.only(
        left: 1.h,
        right: 6.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 27.h),
        child: Icon(
          FontAwesomeIcons.google, // Utilisez l'icône Google
          size: 26.adaptSize,
          color: Color.fromARGB(
              255, 13, 15, 7), // Choisissez la couleur appropriée
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray900,
    );
  }

  Widget _buildAppleButton(BuildContext context) {
    return CustomElevatedButton(
      height: 56.v,
      text: "Continue with Apple",
      margin: EdgeInsets.only(
        left: 1.h,
        right: 6.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 26.h),
        child: Icon(
          FontAwesomeIcons.apple, // Utilisez l'icône Apple
          size: 28.adaptSize,
          color: Colors.black, // Choisissez la couleur appropriée
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray900,
    );
  }

  Widget _buildFacebookButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue with Facebook",
      margin: EdgeInsets.only(
        left: 1.h,
        right: 6.h,
      ),
      leftIcon: Container(
        padding: EdgeInsets.only(
          left: 7.h,
          top: 5.v,
          right: 7.h,
        ),
        child: Icon(
          FontAwesomeIcons.facebook, // Utilisez l'icône Facebook
          size: 20.v,
          color: Colors.black, // Choisissez la couleur appropriée
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray900,
    );
  }
}
