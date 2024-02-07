import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/forgot_password/forgotpasswordverification.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);

  TextEditingController emailFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 16,
            top: 30,
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Enter your email",
                  // style: theme.textTheme.headlineLarge, // You might want to define this style
                ),
              ),
              SizedBox(height: 17),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Please enter your registered email address",
                  // style: theme.textTheme.bodyMedium, // You might want to define this style
                ),
              ),

              // Ajoutez un champ pour saisir l'email
              _buildEmailField(context),

              SizedBox(height: 29),

              CustomElevatedButton(
                text: "Verify and proceed",
                margin: EdgeInsets.only(right: 22),
                onPressed: () {
                  // Vous pouvez accéder à la valeur de l'email avec emailFieldController.text
                  // et effectuer des opérations nécessaires, par exemple, envoyer un code de vérification.

                  // Navigate to the verification page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPasswordVerification(),
                    ),
                  );
                },
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

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

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 87.v,
      leadingWidth: 48.h,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
        ),
      ),
      title: AppbarTitle(
        text: " Login",
        margin: EdgeInsets.only(left: 14.h),
      ),
    );
  }
}
