import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiviteTickets extends StatelessWidget {
  const ActiviteTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
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
                radius: BorderRadius.circular(15.h),
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
                        ],
                      ),
                    ),
                    SizedBox(height: 13.v),
                    SizedBox(
                      width: 247.h,
                      child: Row(
                        children: [
                          Spacer(),
                          Container(
                            width:
                                120.h, // Ajustez la largeur selon vos besoins
                            margin: EdgeInsets.symmetric(vertical: 3.v),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    // Action à effectuer lors du clic sur le bouton
                                    supprimerElement();
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: () {
                                    // Action à effectuer lors du clic sur le bouton de modification
                                    modifierElement();
                                  },
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
    );
  }

  void supprimerElement() {
    // Ajoutez ici le code pour effectuer la suppression
    print('Élément supprimé !');
  }

  void modifierElement() {
    // Ajoutez ici le code pour effectuer la modification
    print('Élément modifié !');
  }
}
