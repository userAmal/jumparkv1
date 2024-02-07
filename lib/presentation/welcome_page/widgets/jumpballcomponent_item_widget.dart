import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class JumpballcomponentItemWidget extends StatelessWidget {
  const JumpballcomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
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
              radius: BorderRadius.circular(
                15.h,
              ),
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
                        Padding(
                          padding: EdgeInsets.only(
                            top: 4.v,
                            bottom: 5.v,
                          ),
                          child: Text(
                            "All levels",
                            style: CustomTextStyles.labelLargePink400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  SizedBox(
                    width: 247.h,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          ImageConstant.imgIcons,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 3.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "1",
                            style: CustomTextStyles.bodySmallNotoSansGray90001,
                          ),
                        ),
                        SvgPicture.asset(
                          ImageConstant.imgIconsGray60001,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 3.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "60 min",
                            style: CustomTextStyles.bodySmallNotoSansGray90001,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 43.h,
                          margin: EdgeInsets.symmetric(vertical: 3.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                ImageConstant.imgStar11,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                              ),
                              Text(
                                "5.0",
                                style: CustomTextStyles
                                    .bodySmallNotoSansOnErrorContainer,
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
    );
  }
}
