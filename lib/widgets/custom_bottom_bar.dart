import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIconsPrimary,
      activeIcon: ImageConstant.imgIconsPrimary,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLinkedin,
      activeIcon: ImageConstant.imgLinkedin,
      title: "Find us",
      type: BottomBarEnum.Findus,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      activeIcon: ImageConstant.imgUser,
      title: "Wallet",
      type: BottomBarEnum.Wallet,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFavorite,
      activeIcon: ImageConstant.imgFavorite,
      title: "Safety",
      type: BottomBarEnum.Safety,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.v,
      decoration: BoxDecoration(
        color: appTheme.gray90001,
        borderRadius: BorderRadius.circular(
          20.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onErrorContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              12,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: SizedBox(
              height: 49.v,
              width: 44.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    color: appTheme.gray60001,
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 3.h,
                        top: 34.v,
                        right: 3.h,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: appTheme.gray60001,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: SizedBox(
              height: 49.v,
              width: 44.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 44.adaptSize,
                    width: 44.adaptSize,
                    color: theme.colorScheme.primary.withOpacity(1),
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        top: 34.v,
                        right: 6.h,
                      ),
                      child: Text(
                        bottomMenuList[index].title ?? "",
                        style: CustomTextStyles.bodySmallBluegray200.copyWith(
                          color: appTheme.blueGray200,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Findus,
  Wallet,
  Safety,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
