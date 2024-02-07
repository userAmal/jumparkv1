import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/presentation/AuthenticationService.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage>
    with AutomaticKeepAliveClientMixin<SignUpPage> {
  AuthenticationService authService = AuthenticationService();
  TextEditingController emailFieldController = TextEditingController();
  TextEditingController passwordFieldController = TextEditingController();
  TextEditingController nomFieldController = TextEditingController();
  TextEditingController prenomFieldController = TextEditingController();
  TextEditingController phoneFieldController = TextEditingController();
  TextEditingController dobFieldController =
      TextEditingController(); // Changed field controller name
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
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimaryContainer,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    right: 20.h,
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 49.v),
                      Text(
                        "Sign up",
                        style: theme.textTheme.headlineLarge,
                      ),
                      SizedBox(height: 21.v),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nom",
                                  style: CustomTextStyles.bodyMediumBluegray200,
                                ),
                                SizedBox(height: 12.v),
                                _buildNomField(context),
                              ],
                            ),
                          ),
                          SizedBox(
                              width: 20.h), // Ajustez la largeur si nécessaire
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Prénom",
                                  style: CustomTextStyles.bodyMediumBluegray200,
                                ),
                                SizedBox(height: 12.v),
                                _buildPrenomField(context),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 21.v),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Téléphone",
                                  style: CustomTextStyles.bodyMediumBluegray200,
                                ),
                                SizedBox(height: 12.v),
                                _buildPhoneField(context),
                              ],
                            ),
                          ),
                          SizedBox(
                              width: 20.h), // Ajustez la largeur si nécessaire
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Date de naissance",
                                  style: CustomTextStyles.bodyMediumBluegray200,
                                ),
                                SizedBox(height: 12.v),
                                _buildDateOfBirthField(context),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 21.v),
                      Text(
                        "Email",
                        style: CustomTextStyles.bodyMediumBluegray200,
                      ),
                      SizedBox(height: 12.v),
                      _buildEmailField(context),
                      SizedBox(height: 19.v),
                      Text(
                        "Mot de passe",
                        style: CustomTextStyles.bodyMediumBluegray200,
                      ),
                      SizedBox(height: 12.v),
                      _buildPasswordField(context),
                      SizedBox(height: 20.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "En cliquant sur Créer un compte, vous acceptez nos",
                              style: CustomTextStyles.bodyMediumff777777,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "politiques de confidentialité",
                              style: CustomTextStyles.bodyMediumffc81cc5,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 19.v),
                      _buildCreateAccountButton(context),
                      SizedBox(height: 20.v),
                      _buildLoginOptionsRow(context),
                      SizedBox(height: 40.v),
                      _buildGoogleButton(context),
                      SizedBox(height: 19.v),
                      _buildAppleButton(context),
                      SizedBox(height: 19.v),
                      _buildFacebookButton(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Créer un compte",
      margin: EdgeInsets.only(right: 10.h),
      onPressed: () async {
        String nom = nomFieldController.text;
        String prenom = prenomFieldController.text;
        String dateNaiss = dobFieldController.text;
        String telephone = phoneFieldController.text;
        String email = emailFieldController.text;
        String password = passwordFieldController.text;

        try {
          // Utilisez l'instance de AuthenticationService pour appeler signUp
          await authService.signUp(
            nom,
            prenom,
            dateNaiss,
            telephone,
            email,
            password,
          );

          // Gérez le succès de l'inscription ici, par exemple, naviguez vers une nouvelle page
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    WelcomePage()), // Remplacez NextPage par la page suivante après l'inscription réussie
          );
        } catch (e) {
          // Gérez les erreurs d'inscription ici
          print("Erreur d'inscription: $e");
          // Vous pouvez afficher un message d'erreur à l'utilisateur
        }
      },
    );
  }

  Widget _buildNomField(BuildContext context) {
    return CustomTextFormField(
      controller: nomFieldController,
      hintText: "Veuillez entrer votre nom",
      textInputType: TextInputType.text,
    );
  }

  Widget _buildPrenomField(BuildContext context) {
    return CustomTextFormField(
      controller: prenomFieldController,
      hintText: "Veuillez entrer votre prénom",
      textInputType: TextInputType.text,
    );
  }

  Widget _buildPhoneField(BuildContext context) {
    return CustomTextFormField(
      controller: phoneFieldController,
      hintText: "Veuillez entrer votre téléphone",
      textInputType: TextInputType.phone,
    );
  }

  Widget _buildDateOfBirthField(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        DateTime? selectedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
          builder: (BuildContext context, Widget? child) {
            return Theme(
              data: ThemeData.light(),
              child: child!,
            );
          },
        );

        if (selectedDate != null) {
          String formattedDate =
              selectedDate.toLocal().toString().split(' ')[0];
          dobFieldController.text = formattedDate;
        }
      },
      child: AbsorbPointer(
        child: CustomTextFormField(
          controller: dobFieldController,
          hintText: "Sélectionnez votre date de naissance",
          textInputType: TextInputType.datetime,
          suffix: Icon(
            Icons.calendar_today,
            color: theme.colorScheme.onPrimaryContainer,
          ),
          suffixConstraints: BoxConstraints(maxHeight: 54.v),
          contentPadding: EdgeInsets.only(
            left: 20.h,
            top: 18.v,
            bottom: 18.v,
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField(BuildContext context) {
    return CustomTextFormField(
      controller: emailFieldController,
      hintText: "Veuillez entrer votre adresse e-mail",
      textInputType: TextInputType.emailAddress,
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
      controller: passwordFieldController,
      hintText: "Veuillez entrer votre mot de passe",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 5.v, 6.h, 5.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgCloseGray60001,
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
    );
  }

  Widget _buildLoginOptionsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
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
            "Ou connectez-vous avec",
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
      text: "Continuer avec Google",
      margin: EdgeInsets.only(
        left: 1.h,
        right: 6.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 27.h),
        child: Icon(
          FontAwesomeIcons.google,
          size: 26.adaptSize,
          color: Color.fromARGB(255, 13, 15, 7),
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray900,
    );
  }

  Widget _buildAppleButton(BuildContext context) {
    return CustomElevatedButton(
      height: 56.v,
      text: "Continuer avec Apple",
      margin: EdgeInsets.only(
        left: 1.h,
        right: 6.h,
      ),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 26.h),
        child: Icon(
          FontAwesomeIcons.apple,
          size: 28.adaptSize,
          color: Colors.black,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray900,
    );
  }

  Widget _buildFacebookButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Continuer avec Facebook",
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
          FontAwesomeIcons.facebook,
          size: 20.v,
          color: Colors.black,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray900,
    );
  }
}
