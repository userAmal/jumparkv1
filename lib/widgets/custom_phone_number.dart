import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            _openCountryPicker(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: appTheme.gray10001,
              borderRadius: BorderRadius.circular(
                12.h,
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 18.v,
                    bottom: 18.v,
                  ),
                  child: Text(
                    "+${country.phoneCode}",
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.fromLTRB(12.h, 15.v, 10.h, 15.v),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: CustomTextFormField(
              width: 261.h,
              controller: controller,
              hintText: "22 000 000",
              contentPadding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 18.v,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
