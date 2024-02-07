import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BookingconfirmationItemWidget extends StatefulWidget {
  const BookingconfirmationItemWidget({Key? key}) : super(key: key);

  @override
  _BookingconfirmationItemWidgetState createState() =>
      _BookingconfirmationItemWidgetState();
}

class _BookingconfirmationItemWidgetState
    extends State<BookingconfirmationItemWidget> {
  int ticketCount = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: 60.h,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 6.v,
          ),
          decoration: AppDecoration.fillGray900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Text(
            "$ticketCount ticket",
            style: CustomTextStyles
                .labelLargeSFProDisplayOnPrimaryContainerSemiBold,
          ),
        ),
      ),
    );
  }
}
