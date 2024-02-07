import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame1ItemWidget extends StatelessWidget {
  const Frame1ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 50.v), // Adjust the bottom padding
        child: Column(
          children: [
            Text(
              "ENJOY Your FLIPS".toUpperCase(),
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 15.v),
            SizedBox(
              width: 366.h,
              child: Text(
                "One bounce & you’ll flip out with excitement, challenging yourself to greater leaps & bounds. With excitement for all the family, JUMPARK  offers the perfect day out with family & friends.",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumPoppinsGray900.copyWith(
                  height: 1.71,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
