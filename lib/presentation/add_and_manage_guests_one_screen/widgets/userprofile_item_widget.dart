import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 111.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: CustomIconButton(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVuesaxBulkProfileAddPrimary,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Adam Smith",
                    style: theme.textTheme.labelLarge,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "Ninja member",
                    style: CustomTextStyles.bodySmallNotoSans,
                  ),
                ],
              ),
            ],
          ),
        ),
        CustomElevatedButton(
          height: 18.v,
          width: 55.h,
          text: "Pending",
          margin: EdgeInsets.only(
            top: 7.v,
            bottom: 5.v,
          ),
          buttonStyle: CustomButtonStyles.fillPrimaryContainer,
          buttonTextStyle:
              CustomTextStyles.labelSmallSFProDisplayPrimaryContainer,
        ),
      ],
    );
  }
}
