import 'package:bouaouina_s_application2/presentation/add_and_manage_guests_one_screen/add_and_manage_guests_one_screen.dart';
import 'package:bouaouina_s_application2/presentation/add_and_manage_guests_two_screen/add_and_manage_guests_two_screen.dart';
import 'package:bouaouina_s_application2/presentation/booking_confirmation_page/widgets/bookingconfirmation_item_widget.dart';
import 'package:bouaouina_s_application2/presentation/find_us_screen/find_us_screen.dart';
import 'package:bouaouina_s_application2/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:bouaouina_s_application2/presentation/profile_screen/profile_screen.dart';
import 'package:bouaouina_s_application2/presentation/safety_screen/safety_screen.dart';
import 'package:bouaouina_s_application2/presentation/ticket_purchased_one_screen/ticket_purchased_one_screen.dart';
import 'package:bouaouina_s_application2/presentation/welcome_page/welcome_page.dart';
import 'package:bouaouina_s_application2/widgets/custom_bottom_bar.dart';
import 'package:bouaouina_s_application2/core/app_export.dart';
import 'package:bouaouina_s_application2/widgets/custom_elevated_button.dart';
import 'package:bouaouina_s_application2/widgets/custom_icon_button.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookingConfirmationPage extends StatefulWidget {
  BookingConfirmationPage({Key? key}) : super(key: key);

  @override
  _BookingConfirmationPageState createState() =>
      _BookingConfirmationPageState();
}

class _BookingConfirmationPageState extends State<BookingConfirmationPage> {
  List<String> _timeList = [
    "14:00",
    "15:00",
    "16:00",
    "17:00",
    "18:00",
    "19:00",
    "20:00",
    "21:00",
    "22:00",
    "23:00"
  ];
  String? _selectedTime;
  DateTime? _selectedDate;
  int _selectedTicketIndex = -1;
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.only(top: 38),
          child: Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context,
                              ModalRoute.withName('/activity_details_screen'));
                        },
                        child: Icon(
                          Icons.arrow_back, // Use your arrow icon here
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 14.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "Back to activity",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                _buildBookingDetails(context),
                SizedBox(height: 16),
                _buildBookingForm(context),
                SizedBox(height: 24.v),
                _buildAddGuests(context),
                SizedBox(height: 20.v),
                Divider(
                  indent: 21.h,
                  endIndent: 37.h,
                ),
                SizedBox(height: 20.v),
                _buildMyUser(context),
                SizedBox(height: 30.v),
                CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddAndManageGuestsTwoScreen(),
                      ),
                    );
                  },
                  text: "Get Tickets",
                  margin: EdgeInsets.only(
                    left: 21.h,
                    right: 33.h,
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(height: 10.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          child: _buildBottomBar(context),
        ),
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.of(context).pushNamed(getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.welcomePage;
      case BottomBarEnum.Findus:
        return AppRoutes.findUsScreen;
      case BottomBarEnum.Wallet:
        return AppRoutes.myWalletScreen;
      case BottomBarEnum.Safety:
        return AppRoutes.safetyScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.welcomePage:
        return WelcomePage();
      case AppRoutes.myWalletScreen:
        return MyWalletScreen();
      case AppRoutes.safetyScreen:
        return SafetyScreen();
      case AppRoutes.findUsScreen:
        return FindUsScreen();
      default:
        return DefaultWidget();
    }
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(140), // Adjust the height as needed
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        decoration: AppDecoration.outlineGray900,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(context),
            // Add other elements to your appbar here if necessary
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup146,
                height: 32.adaptSize,
                width: 32.adaptSize,
                margin: EdgeInsets.only(
                  left: 4,
                  top: 15,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10,
                top: 18,
                bottom: 8,
              ),
              child: Text(
                "Hello, Mehdi!",
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 180,
        ),
        Padding(
          padding: EdgeInsets.all(3.0), // Ajuster la marge des icônes
          child: Row(
            children: [
              SvgPicture.asset(
                ImageConstant.imgForward,
                height: 40.adaptSize, // Ajuster la taille de l'icône
                width: 40.adaptSize, // Ajuster la taille de l'icône
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TicketPurchasedOneScreen()),
                  );
                },
                child: SvgPicture.asset(
                  ImageConstant.imgIconlyBoldScan,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBookingDetails(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          left: 21.h,
          right: 18.h,
        ),
        decoration: AppDecoration.outlineOrange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 1.v),
            Padding(
              padding: EdgeInsets.only(right: 27.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Booking details",
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "Select date and time, and get your ticket.",
                        style: CustomTextStyles.bodySmallPoppins,
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconlyBoldScanPrimary,
                    height: 23.adaptSize,
                    width: 23.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 9.v),
                  ),
                ],
              ),
            ),
            SizedBox(height: 0.v),
            SizedBox(
              height: 140,
              width: 356,
              child: EasyDateTimeLine(
                initialDate: DateTime.now(),
                onDateChange: (selectedDate) {
                  _selectedDate = selectedDate;
                },
                activeColor: const Color(0xffFFBF9B),
                headerProps: const EasyHeaderProps(
                  dateFormatter: DateFormatter.monthOnly(),
                ),
                dayProps: const EasyDayProps(
                  height: 56.0,
                  width: 56.0,
                  dayStructure: DayStructure.dayNumDayStr,
                  inactiveDayStyle: DayStyle(
                    borderRadius: 48.0,
                    dayNumStyle: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  activeDayStyle: DayStyle(
                    dayNumStyle: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.v),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.h),
                child: SizedBox(
                  height: 50.v,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _timeList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          print("Selected Time: ${_timeList[index]}");
                          _selectedTime = _timeList[index];
                          (context as Element).markNeedsBuild();
                        },
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: _selectedTime == _timeList[index]
                                ? Color.fromARGB(255, 255, 186, 149)
                                : Colors.transparent,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              _timeList[index],
                              style: theme.textTheme.bodyLarge,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.v),
            Divider(
              endIndent: 19.h,
            ),
            SizedBox(height: 20.v),
            Text(
              "How many tickets?",
              style: CustomTextStyles.bodySmallPoppins,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBookingForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 241, 202, 166),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelStyle: CustomTextStyles.bodySmallPoppins,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                labelText: "How many tickets?",
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddGuests(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 21.h,
        right: 35.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              children: [
                Text(
                  "Add Guests",
                  style: CustomTextStyles.titleMediumBlack900_1,
                ),
                SizedBox(height: 6.v),
                Text(
                  "Click to add people",
                  style: CustomTextStyles.bodySmallPoppins,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddAndManageGuestsOneScreen(),
                ),
              );
            },
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(0.h),
              decoration: IconButtonStyleHelper.fillBlack,
              child: SvgPicture.asset(
                ImageConstant.imgVuesaxBulkProfileAddPrimary,
                height: 30.adaptSize,
                width: 30.adaptSize,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMyUser(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 21.h,
        right: 37.h,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 90.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      height: 29.adaptSize,
                      width: 29.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVuesaxBulkProfileAddPrimary,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Alex Doe",
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
              CustomIconButton(
                height: 29.adaptSize,
                width: 29.adaptSize,
                padding: EdgeInsets.all(7.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVuesaxBulkProfileAddPrimary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 9.h,
                  top: 1.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Joelle Smith",
                      style: theme.textTheme.labelLarge,
                    ),
                    Text(
                      "Ninja member",
                      style: CustomTextStyles.bodySmallNotoSansGray900,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
