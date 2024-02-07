import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FrameItemWidget extends StatelessWidget {
  const FrameItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Invite your friends".toUpperCase(),
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 15.v),
          SizedBox(
            width: 348.h,
            child: Text(
              "Bring your group together at JUMPARK for an awesome opportunity to reconnect with friends and family, and get everyone active your crew and let’s go!",
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
    );
  }
}
