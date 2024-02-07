import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:bouaouina_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_text_form_field.dart'; // Ajout de l'import pour le champ de saisie du mot de passe
import 'package:flutter/material.dart';

class ForgotPasswordVerification extends StatelessWidget {
  const ForgotPasswordVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController newPasswordController = TextEditingController();

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
                  "Enter a new password",
                  // style: theme.textTheme.headlineLarge, // You might want to define this style
                ),
              ),
              SizedBox(height: 17),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Please create a new password",
                  // style: theme.textTheme.bodyMedium, // You might want to define this style
                ),
              ),
              SizedBox(height: 3),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Resend code",
                  // style: CustomTextStyles.bodyMediumPurple500, // You might want to define this style
                ),
              ),
              SizedBox(height: 29),

              // Remplacer le champ de saisie du code par un champ de saisie pour le nouveau mot de passe
              Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 32,
                ),
                child: CustomTextFormField(
                  controller: newPasswordController,
                  hintText: "Enter your new password",
                  obscureText: true, // Pour masquer le texte
                  textInputType: TextInputType.visiblePassword,
                ),
              ),

              SizedBox(height: 34),

              CustomElevatedButton(
                text: "Reset Password",
                margin: EdgeInsets.only(right: 22),
                onPressed: () {
                  // Vous pouvez accéder à la valeur du nouveau mot de passe avec le contrôleur
                  String newPassword = newPasswordController.text;

                  // Effectuer des opérations nécessaires, par exemple, réinitialiser le mot de passe.

                  // Navigate to the WelcomePage
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WelcomePage(),
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
