import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mended_mender/mender/colors.dart';
import 'package:mended_mender/mender/widgets/balance_card.dart';
import 'package:mended_mender/mender/widgets/balance_card2.dart';
import 'package:mended_mender/mender/widgets/top_bar.dart';
import '../../constants.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_elevated_button2.dart';
import '../widgets/next_session_widget.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MenderHomeScreen extends StatefulWidget {
  const MenderHomeScreen({super.key});

  @override
  State<MenderHomeScreen> createState() => _MenderHomeScreenState();
}

class _MenderHomeScreenState extends State<MenderHomeScreen> {
  TextEditingController SearchController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController withdrawController = TextEditingController();
  TextEditingController calenderTitleController = TextEditingController();

  String selectedRepeat = 'Never';
  String selectedHour = '1';
  String selectedMinute = '00';
  String selectedAmPm = 'AM';
  String selectedHour2 = '1';
  String selectedMinute2 = '00';
  String selectedAmPm2 = 'AM';
  String selectedTime = 'Starts';
  DateTime? selectedDate;
  bool isEditVisible = true;
  bool isWalletVisible = true;
  bool isCalenderVisible = true;
  late double rating = 0;
  int selectedIndex = 0;
  List usersList = [
    const UserContainer(
      imageUrl: 'assets/mender/images3.jpeg',
      name: 'Ramisha Rasheed',
    ),
    const UserContainer(
      imageUrl: 'assets/mender/images2.jpeg',
      name: 'Sara Ali Khan',
    ),
    const UserContainer(
      imageUrl: 'assets/mender/images3.jpeg',
      name: 'Johnny White',
    ),
    const UserContainer(
      imageUrl: 'assets/mender/images4.jpeg',
      name: 'Don John ',
    ),
    const UserContainer(
      imageUrl: 'assets/mender/images1.jpg',
      name: 'White Parker',
    )
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.width);

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/mender/main_background.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TopBar(
                    row: [
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: getButton(
                            Icons.play_circle, "Flicks", selectedIndex == 0),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: getButton(Icons.calendar_month, "Calendar",
                            selectedIndex == 1),
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 2;
                            });
                          },
                          child: getButton(
                              Icons.wallet, "Wallet", selectedIndex == 2)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 3;
                            });
                          },
                          child: getButton(
                              Icons.group, "Client list", selectedIndex == 3)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 4;
                            });
                          },
                          child: getButton(
                              Icons.message, "Messages", selectedIndex == 4)),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = 5;
                            });
                          },
                          child: getButton(
                              Icons.person, "Profile", selectedIndex == 5)),
                    ],
                  ),
                ],
              ),
              // SizedBox(
              //   height: size.height * 0.04,
              // ),
              SizedBox(
                height: size.height * 0.04,
              ),
              SizedBox(
                width: size.width / 1.1,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Your balance',
                            style: TextStyle(color: Colors.black45),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Visibility(
                            visible: [0, 1, 3, 4, 5].contains(selectedIndex),
                            child: BalanceCard(
                              title: 'Total Balance',
                              totalBalance: '\$224.57',
                              onButtonPressed: null,
                            ),
                          ),
                          Visibility(
                            visible: selectedIndex == 2,
                            child: BalanceCard2(
                              title: 'Total Balance',
                              totalBalance: '\$224.57',
                              lastPayment: '\$50',
                              lastWithdraw: '\$150',
                            ),
                          ),
                          // BalanceCard(
                          //     title: 'Total Balance',
                          //     totalBalance: '\$224.57',
                          //     onButtonPressed: null),
                          // BalanceCard2(
                          //     title: 'Total Balance',
                          //     totalBalance: '\$224.57',
                          //     lastPayment: '\$50',
                          //     lastWithdraw: '\$150'),
                          const SizedBox(
                            height: 10,
                          ),
                          Visibility(
                            visible: [0, 1, 3, 4, 5].contains(selectedIndex),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = 2;
                                });
                              },
                              child: const Text(
                                'Go to my wallet',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Color(0xff09be7d), // Text color
                                  decoration:
                                      TextDecoration.underline, // Add underline
                                  decorationStyle: TextDecorationStyle
                                      .solid, // Solid underline style
                                  decorationColor: Color(0xff09be7d),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.70,
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(bottom: size.height * 0.03),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                image: AssetImage('assets/mender/logo.png'),
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurStyle: BlurStyle.outer,
                                  blurRadius: 4,
                                  spreadRadius: 3.0,
                                ),
                              ],
                              color: const Color(0xfff5fcf9),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                        ],
                      ),
                      getMainWidget(size),
                      SizedBox(
                        height: size.height,
                        width: 270,
                        child: Column(
                          children: [
                            //first card
                            NextSessionCard(
                              title: 'Your next session',
                              date: '07 September 2023',
                              buddyName: 'Alejandra Vega',
                              time: '12:00 - 16:00',
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Flexible(
                              child: Container(
                                // height: size.height * 0.09,
                                padding: const EdgeInsets.all(15),
                                // width: size.width * 0.21,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black12),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Buddies',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          width: 150,
                                        ),
                                        Icon(
                                          Icons.search,
                                          color: Colors.black38,
                                          size: 22,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    Flexible(
                                      child: ListView.builder(
                                          itemCount: usersList.length,
                                          itemBuilder: (context, index) {
                                            return Column(
                                              children: [
                                                usersList[index],
                                                const SizedBox(
                                                  height: 10,
                                                )
                                              ],
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * 0.06,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Privacy - Terms & Cond. Mender ',
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 13),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Icon(
                                  Icons.copyright,
                                  size: 15,
                                  color: Colors.black26,
                                ),
                                Text(
                                  '2023 ',
                                  style: TextStyle(
                                      color: Colors.black26, fontSize: 13),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getButton(IconData icon, String title, bool isSelected) {
    Color color = Colors.grey;
    if (isSelected) {
      color = MenderColors.primaryColor;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: color,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }

  Widget getFlicksWidget(size) {
    return SizedBox(
        height: size.height,
        width: size.width / 2.6,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomButton(text: 'Friends'),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  width: 0.5, // Adjust the width as needed
                  height: 20.0, // Adjust the height as needed
                  color: Colors.black,
                ),
                const CustomButton(text: 'Popular'),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return getCard(size);
                  }),
            ),
          ],
        ));
  }

  Widget getCard(
    Size size,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurStyle: BlurStyle.outer,
                      blurRadius: 3,
                      spreadRadius: 1.0,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 15.0,
                          backgroundImage:
                              AssetImage('assets/mender/images4.jpeg'),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'Aria',
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 15,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Image(
                            height: 20,
                            width: 20,
                            image: AssetImage('assets/mender/stars.png'),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: InkWell(
                            onTap: () {},
                            child: const FaIcon(
                              FontAwesomeIcons.userPlus,
                              color: Color(0xff82e5c1),
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Padding(
                    //   padding:
                    //       const EdgeInsets.symmetric(vertical: 10),
                    //   child: Container(
                    //     // height: size,
                    //     width: size.width / 3.2,
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(15.0),
                    //       color: Colors.green,
                    //       image: const DecorationImage(
                    //           image: AssetImage(
                    //               'assets/mender/beachview.jpg'),
                    //           fit: BoxFit.cover),
                    //     ),
                    //   ),
                    // ),
                    // Padding(
                    //     padding: const EdgeInsets.symmetric(vertical: 5),
                    //     child: CachedNetworkImage(
                    //       imageUrl:
                    //           "https://hips.hearstapps.com/hmg-prod/images/img-1484-jpg-649644d3c1386.jpg?crop=0.571xw:0.762xh;0.240xw,0.195xh&resize=1200:*",
                    //       width: size.width,
                    //       height: size.width * 0.3,
                    //     )),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Image.asset(
                          'assets/mender/doctor.jpg',
                          width: size.width,
                          height: size.height * 0.53,
                        )
                        // CachedNetworkImage(
                        //   imageUrl:
                        //       "https://example.com/your-medical-image-url.jpg",
                        //   width: size.width,
                        //   height: size.width * 0.3,
                        // ),
                        ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                                onTap: () {},
                                child: const FaIcon(
                                  FontAwesomeIcons.heart,
                                  size: 22.0,
                                  color: Color(0xff2dbfb4),
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                            InkWell(
                                onTap: () {},
                                child: const FaIcon(
                                  FontAwesomeIcons.message,
                                  size: 19.0,
                                  color: Color(0xff2dbfb4),
                                )),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: const FaIcon(
                            FontAwesomeIcons.shareFromSquare,
                            size: 20.0,
                            color: Color(0xff2dbfb4),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '741,368',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                          TextSpan(
                            text: ' views',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '#beautifulday #soundcheck #stressrelie',
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'view all 13384 comments',
                      style: TextStyle(color: Colors.black26, fontSize: 10),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'Add a comment...',
                      style: TextStyle(color: Colors.black38, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: size.height * 0.0,
                right: 0,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    // alignment: Alignment.bottomRight,
                    padding: EdgeInsets.only(bottom: size.height * 0.03),
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                        image: AssetImage('assets/mender/plus.png'),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black38,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 4,
                          spreadRadius: 3.0,
                        ),
                      ],
                      color: const Color(0xfff5fcf9),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getCalendarWidget(size) {
    return SizedBox(
        height: size.height,
        width: size.width / 2.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                        blurStyle: BlurStyle.outer,
                      )
                    ],
                  ),
                  child: SfDateRangePicker(
                    onSelectionChanged: _onSelectionChanged,
                    selectionMode: DateRangePickerSelectionMode.single,
                  ),
                ),
                Positioned(
                  top: size.height * 0.0,
                  right: 0, // Adjust the right position as needed
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isCalenderVisible = !isCalenderVisible;
                      });
                    },
                    child: Container(
                      height: 20,
                      width: 17,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                          image: AssetImage('assets/mender/plus.png'),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 4,
                            spreadRadius: 3.0,
                          ),
                        ],
                        color: const Color(0xfff5fcf9),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 12,
            ),
            Visibility(
              visible: isCalenderVisible,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '23 October 2023',
                        style: TextStyle(color: Colors.black38, fontSize: 16),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 250, // Set your desired fixed height here
                            width: size.width / 2.8,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount:
                                  15, // Replace with the actual number of items in your list
                              itemBuilder: (BuildContext context, int index) {
                                return ReminderContainer(
                                  name: 'Snugglebug Session',
                                  time: '1:00 - 2:00 PM',
                                  date: '23\nOct',
                                  imageUrl: 'assets/mender/images1.jpg',
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    )

                    // reminderContainer(
                    //   name: 'kai Liu Session',
                    //   time: '5:00 - 6:00 PM',
                    //   date: '24\nOct',
                    //   imageUrl: 'assets/mender/images2.jpeg',
                    // )
                  ],
                ),
              ),
            ),
            Visibility(
              visible: !isCalenderVisible,
              child: Padding(
                padding: EdgeInsets.only(left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Client',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(top: 4),
                        width: 40, // Adjust the width and height as needed
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors
                              .transparent, // Transparent circle avatar color
                          border: Border.all(
                            color: Color(0xffB4C6EBB2), // Black border color
                            width: 0.5, // Adjust the border width as needed
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 20,
                          child: Icon(
                            Icons.add,
                            size: 20,
                            color: Color(0xff09BE7D),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Title',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4, bottom: 8),
                      width: size.width / 3.51,
                      height: size.height / 16,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffB4C6EBB2),
                          width: 1.0, // Adjust the border width as needed
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        controller: calenderTitleController,
                        decoration: InputDecoration(
                          border: InputBorder.none, // Remove the underline
                          hintText: '', // Remove the hint text
                        ),
                      ),
                    ),
                    Text(
                      'Time',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4, bottom: 2),
                      width: size.width / 3.51,
                      height: size.height / 15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffB4C6EBB2),
                          width: 1.0, // Adjust the border width as needed
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.black54,
                            ),
                            Text(
                              'Starts',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12),
                            )
                          ],
                        ),
                        title: Row(
                          children: [
                            // Dropdown for Hours (1-12)
                            Expanded(
                              child: DropdownButton<String>(
                                focusColor: Colors.transparent,
                                value: selectedHour,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedHour = newValue!;
                                  });
                                },
                                underline: Container(),
                                items: List.generate(12, (index) {
                                  final hour = (index + 1).toString();
                                  return DropdownMenuItem<String>(
                                    value: hour,
                                    child: Text(hour),
                                  );
                                }),
                              ),
                            ),

                            // Dropdown for Minutes (0-59)
                            Expanded(
                              child: DropdownButton<String>(
                                focusColor: Colors.transparent,
                                value: selectedMinute,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedMinute = newValue!;
                                  });
                                },
                                underline: Container(),
                                items: List.generate(60, (index) {
                                  final minute =
                                      index.toString().padLeft(2, '0');
                                  return DropdownMenuItem<String>(
                                    value: minute,
                                    child: Text(minute),
                                  );
                                }),
                              ),
                            ),

                            // Dropdown for AM/PM
                            Expanded(
                              child: DropdownButton<String>(
                                focusColor: Colors.transparent,
                                value: selectedAmPm,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedAmPm = newValue!;
                                  });
                                },
                                underline: Container(),
                                items: ['AM', 'PM']
                                    .map<DropdownMenuItem<String>>((value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4, bottom: 2),
                      width: size.width / 3.51,
                      height: size.height / 15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffB4C6EBB2),
                          width: 1.0, // Adjust the border width as needed
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.black54,
                            ),
                            Text(
                              'End',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12),
                            )
                          ],
                        ),
                        title: Row(
                          children: [
                            // Dropdown for Hours (1-12)
                            Expanded(
                              child: DropdownButton<String>(
                                focusColor: Colors.transparent,
                                value: selectedHour2,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedHour2 = newValue!;
                                  });
                                },
                                underline: Container(),
                                items: List.generate(12, (index) {
                                  final hour = (index + 1).toString();
                                  return DropdownMenuItem<String>(
                                    value: hour,
                                    child: Text(hour),
                                  );
                                }),
                              ),
                            ),

                            // Dropdown for Minutes (0-59)
                            Expanded(
                              child: DropdownButton<String>(
                                focusColor: Colors.transparent,
                                value: selectedMinute2,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedMinute2 = newValue!;
                                  });
                                },
                                underline: Container(),
                                items: List.generate(60, (index) {
                                  final minute =
                                      index.toString().padLeft(2, '0');
                                  return DropdownMenuItem<String>(
                                    value: minute,
                                    child: Text(minute),
                                  );
                                }),
                              ),
                            ),

                            // Dropdown for AM/PM
                            Expanded(
                              child: DropdownButton<String>(
                                focusColor: Colors.transparent,
                                value: selectedAmPm2,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedAmPm2 = newValue!;
                                  });
                                },
                                underline: Container(),
                                items: ['AM', 'PM']
                                    .map<DropdownMenuItem<String>>((value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Repeat',
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      width: size.width / 3.51,
                      height: size.height / 17,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffB4C6EBB2),
                          width: 1.0, // Adjust the border width as needed
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                        leading: Expanded(
                          child: DropdownButton<String>(
                            focusColor: Colors.transparent,
                            value: selectedRepeat,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedRepeat = newValue!;
                              });
                            },
                            underline: Container(),
                            items: [
                              'Never',
                              'Every day',
                              'Every week',
                              'Every two weeks',
                              'Every month',
                              'Every year'
                            ].map<DropdownMenuItem<String>>((value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              // setState(() {
                              //   // selectedIndex = 5;
                              //   // isEditVisible = isEditVisible;
                              // });
                            },
                            child: CustomElevatedButton(
                                title: 'cancel',
                                callback: () {
                                  moveScreen(context, const MenderHomeScreen());
                                })),
                        SizedBox(
                          width: 4,
                        ),
                        CustomElevatedButton(title: 'Add', callback: () {})
                      ],
                    ),
                  ],
                ),
              ),
              // Container(
              //   child: Text(
              //     selectedDate != null
              //         ? 'Selected Date: ${selectedDate!.toLocal()}'
              //         : 'No date selected',
              //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              //   ),
              // ),
            )

            // ListView.builder(
            //     shrinkWrap: true,
            //     itemBuilder: (context, index) {
            //       return getCard(size);
            //     }),
          ],
        ));
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is DateTime) {
      // Update the selectedDate variable with the selected date
      selectedDate = args.value;
      // Now you can use the selectedDate variable to display the selected date in a Text widget or wherever you need it.
    }
  }

  Widget getWalletWidget(size) {
    return SizedBox(
      height: size.height,
      width: size.width / 2.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: isWalletVisible,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: size.width / 3,
                  height: size.height * 0.17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xff82e5c1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                        blurStyle: BlurStyle.outer,
                      )
                    ],
                  ),
                  child: Container(
                    width: size.width / 3,
                    height: size.height * 0.17,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(65.0),
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(right: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  'Total Balance',
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ),
                              SizedBox(height: 2),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 13, bottom: 8),
                                child: Text(
                                  '\$224.57',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xff05b475),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isWalletVisible = !isWalletVisible;
                              });
                            },
                            child: Container(
                              height: size.height * 0.04,
                              width: size.width * 0.09,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10.0,
                                    blurStyle: BlurStyle.outer,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0xff09BE7D),
                              ),
                              child: const Center(
                                child: Text(
                                  'Withdraw',
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  width: size.width / 3.5,
                  // padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Last Mended Sessions',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Text(
                                'View All',
                                style: TextStyle(
                                    color: Color(0xff09BE7D),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height:
                                    400, // Set your desired fixed height here
                                width: size.width / 3.5,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount:
                                      18, // Replace with the actual number of items in your list
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return CustomListTile(
                                      name: 'John Doe',
                                      date: 'Oct 14',
                                      time: '10:24 AM',
                                      amount: '-\$15.00',
                                      imageUrl: 'assets/mender/images1.jpg',
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        )

                        // Container(
                        //   // padding: EdgeInsets.only(left: 20),
                        //   child: Row(
                        //     children: [
                        //       CircleAvatar(
                        //         radius: 18.0,
                        //         backgroundImage:
                        //             AssetImage('assets/mender/images1.jpg'),
                        //       ),
                        //       SizedBox(
                        //         width: 8,
                        //       ),
                        //       Expanded(
                        //         child: const Column(
                        //           mainAxisAlignment: MainAxisAlignment.start,
                        //           crossAxisAlignment: CrossAxisAlignment.start,
                        //           children: [
                        //             Text(
                        //               'name',
                        //               style: TextStyle(
                        //                   color: Colors.black, fontSize: 16),
                        //             ),
                        //             Row(
                        //               mainAxisAlignment: MainAxisAlignment.start,
                        //               children: [
                        //                 Text(
                        //                   'date',
                        //                   style: TextStyle(
                        //                       color: Colors.black38, fontSize: 12),
                        //                 ),
                        //                 Text(
                        //                   ',',
                        //                   style: TextStyle(color: Colors.black38),
                        //                 ),
                        //                 Text(
                        //                   'time',
                        //                   style: TextStyle(
                        //                       color: Colors.black38, fontSize: 12),
                        //                 )
                        //               ],
                        //             )
                        //           ],
                        //         ),
                        //       ),
                        //       Spacer(),
                        //       Expanded(
                        //           child: const Text(
                        //         'amount',
                        //         style: TextStyle(color: Colors.red, fontSize: 16),
                        //       ))
                        //     ],
                        //   ),
                        // )
                        // ListView.builder(
                        //   shrinkWrap: true,
                        //   itemCount:
                        //       2, // Replace with the actual number of items in your list
                        //   itemBuilder: (BuildContext context, int index) {
                        //     return LastMendedContainer(
                        //         date: 'Oct 14',
                        //         time: '10:24 AM',
                        //         amount: '-\$15.00',
                        //         name: 'Joyjammer',
                        //         imageUrl: 'assets/mender/images1.jpg');
                        //   },
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: !isWalletVisible,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: size.width / 3,
                  height: size.height * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black12),
                      color: Colors.white),
                  child: ListTile(
                    leading: Text('Current balance ',
                        style: TextStyle(color: Colors.black87, fontSize: 15)),
                    trailing: RichText(
                      text: TextSpan(
                        style: DefaultTextStyle.of(context)
                            .style, // Default text style
                        children: <TextSpan>[
                          TextSpan(
                            text: '\$',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 20.0,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          TextSpan(
                            text: '224.57',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                              fontSize: 20.0,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  'Enter the amount you want to withdraw ',
                  style: TextStyle(color: Colors.black45, fontSize: 18),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Container(
                    width: size.width / 3,
                    height: size.height * 0.06,
                    child: TextField(
                      controller: withdrawController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintText: '\$80.00',
                          hintStyle:
                              TextStyle(color: Colors.black38, fontSize: 25)),
                    )),
                SizedBox(
                  height: size.height * 0.008,
                ),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context)
                        .style, // Default text style
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Commission',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontSize: 15.0,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                        ),
                      ), // Add space between text spans using TextSpan

                      TextSpan(
                        text: '\$5',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
                Text(
                  '(is constant and amounts to 5%)',
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.info_outlined,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'minimum withdrawal amount is \$10',
                      style: TextStyle(color: Colors.black45, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                CustomElevatedButton2(title: 'Withdraw \$80', callback: () {}),
                CustomElevatedButton2(
                    title: 'Cancel',
                    callback: () {
                      moveScreen(context, const MenderHomeScreen());
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getClientListWidget(size) {
    return SizedBox(
      height: size.height,
      width: size.width / 3.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              border: Border.all(color: Color(0xff0A8357).withOpacity(0.7)),
            ),
            child: ListTile(
              leading: Icon(
                Icons.search,
                color: Color(0xff0A8357),
                size: 24,
              ),
              title: TextField(
                controller: SearchController,
                style: const TextStyle(fontSize: 14),
                // cursorColor: Colors.orange,
                // obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xff0A8357),
                  ),
                  // contentPadding: const EdgeInsets.only(left: 16),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: size.height * 0.05,
              width: size.width * 0.08,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/mender/colorfulbutton.png")),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    blurStyle: BlurStyle.outer,
                  )
                ],
                borderRadius: BorderRadius.circular(50),
                // color: Colors.transparent,
              ),
              child: const Center(
                child: Text(
                  'Find Clients',
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 450, // Set your desired fixed height here
                  width: size.width / 3.3,
                  child: ListView.builder(
                    itemCount:
                        20, // Replace with the actual number of items in your list
                    itemBuilder: (BuildContext context, int index) {
                      return ClientContainer(
                        imageUrl: 'assets/mender/images2.jpeg',
                        name: 'Sara Ali Khan',
                      );
                    },
                  ),
                ),
              ],
            ),
          )

          // SizedBox(
          //   width: size.width / 3.3,
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     itemCount:
          //         8, // Replace with the actual number of items in your list
          //     itemBuilder: (BuildContext context, int index) {
          //       return ClientContainer(
          //         imageUrl: 'assets/mender/images2.jpeg',
          //         name: 'Sara Ali Khan',
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget getMessagesWidget(size) {
    return SizedBox(
      height: size.height,
      width: size.width / 3.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomButton2(text: 'Mender\'s Buddies'),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                width: 0.5, // Adjust the width as needed
                height: 20.0, // Adjust the height as needed
                color: Colors.black,
              ),
              const CustomButton2(text: 'Clients'),
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              border: Border.all(color: Color(0xff0A8357).withOpacity(0.7)),
            ),
            child: ListTile(
              leading: Icon(
                Icons.search,
                color: Color(0xff0A8357),
                size: 24,
              ),
              title: TextField(
                controller: SearchController,
                style: const TextStyle(fontSize: 14),
                // cursorColor: Colors.orange,
                // obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xff0A8357),
                  ),
                  // contentPadding: const EdgeInsets.only(left: 16),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 450, // Set your desired fixed height here
                  width: size.width / 3.3,
                  child: ListView.builder(
                    itemCount:
                        20, // Replace with the actual number of items in your list
                    itemBuilder: (BuildContext context, int index) {
                      return MessageContainer(
                        imageUrl: 'assets/mender/images2.jpeg',
                        name: 'Sara Ali Khan',
                        msgtxt: 'dsvsdvcjhsdvsudincbhhhjhjhshhdhsjhjdhs',
                        time: '9:20 AM',
                      );
                    },
                  ),
                ),
              ],
            ),
          )

          // SizedBox(
          //   width: size.width / 3.3,
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     itemCount:
          //         8, // Replace with the actual number of items in your list
          //     itemBuilder: (BuildContext context, int index) {
          //       return ClientContainer(
          //         imageUrl: 'assets/mender/images2.jpeg',
          //         name: 'Sara Ali Khan',
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget getProfileWidget(size) {
    return SizedBox(
      height: size.height,
      width: size.width / 2.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Visibility(
            visible: isEditVisible,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xff09be7d),
                        blurStyle: BlurStyle.outer,
                        spreadRadius: 3.0,
                        blurRadius: 3.0,
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffcbcfd3),
                    backgroundImage: AssetImage('assets/mender/images1.jpg'),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dr. Harry',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isEditVisible = !isEditVisible;
                          });
                        },
                        child: Icon(Icons.edit,
                            size: 18, color: Color(0xff09be7d)),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 3),
                Text(
                  'Licensed professional Counselor, PhD, LPC',
                  style: TextStyle(
                    color: Color(0xff9d9d9d),
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 10),
                RatingStars(
                  starCount: 5,
                  value: rating, // Set the initial rating.
                  starColor: Color(0xffFBAD05),
                  animationDuration: Duration(milliseconds: 1000),

                  onValueChanged: (value) {
                    setState(() {
                      rating = value; // Update the selected rating.
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(FontAwesomeIcons.users,
                              color: Color(0xff09be7d)),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Buddy List',
                            style: TextStyle(color: Color(0xff09be7d)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      width: 1.5, // Adjust the width as needed
                      height: 40.0, // Adjust the height as needed
                      color: Color(0xff09BE7D),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Icon(Icons.message_outlined,
                              color: Color(0xff09be7d)),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Messages',
                            style: TextStyle(color: Color(0xff09be7d)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Visibility(
            visible: !isEditVisible,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffcbcfd3),
                  backgroundImage: AssetImage('assets/mender/images1.jpg'),
                ),
                SizedBox(
                  height: 4,
                ),
                InkWell(
                  onTap: () {
                    pickImages();
                  },
                  child: Text(
                    'Change photo',
                    style: TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        color: Color(0xff06CC85)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                EditProfileWidget(
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  controller: nameController,
                ),
                EditProfileWidget(
                  labelText: 'Email',
                  hintText: 'Enter your Email',
                  controller: emailController,
                ),
                EditProfileWidget(
                  labelText: 'Phone Number',
                  hintText: 'Enter your Phone Number',
                  controller: phoneController,
                ),
                EditProfileWidget(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  controller: passwordController,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0).copyWith(left: 150),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Upload license',
                          style: TextStyle(color: Colors.black54, fontSize: 12),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        pickFile();
                      },
                      child: Container(
                        height: 40,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black38),
                            color: Colors.transparent),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.cloudArrowUp,
                                  size: 20,
                                  color: Color(0xff01af71),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  'Drag and Drop here',
                                  style: TextStyle(
                                      color: Color(0xff01af71), fontSize: 12),
                                )
                              ],
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150, top: 2.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Supportted formates: JPEG,PNG,GIF,PDF ',
                          style: TextStyle(color: Colors.black26, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                // selectedIndex = 5;
                                // isEditVisible = isEditVisible;
                              });
                            },
                            child: CustomElevatedButton(
                                title: 'cancel',
                                callback: () {
                                  moveScreen(context, const MenderHomeScreen());
                                })),
                        SizedBox(
                          width: 4,
                        ),
                        CustomElevatedButton(title: 'Save', callback: () {})
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getMainWidget(size) {
    if (selectedIndex == 0) {
      return getFlicksWidget(size);
    }
    if (selectedIndex == 1) {
      return getCalendarWidget(size);
    }
    if (selectedIndex == 2) {
      return getWalletWidget(size);
    }
    if (selectedIndex == 3) {
      return getClientListWidget(size);
    }
    if (selectedIndex == 4) {
      return getMessagesWidget(size);
    }
    if (selectedIndex == 5) {
      return getProfileWidget(size);
    }
    return SizedBox(
        height: size.height,
        width: size.width / 2.2,
        child: Center(
          child: Container(
            child: Text('Empty'),
          ),
        ));
  }
}

class ReminderContainer extends StatelessWidget {
  final String date;
  final String time;
  final String name;
  final String imageUrl;

  const ReminderContainer({
    required this.date,
    required this.time,
    required this.name,
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20),
          margin: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff0A8357),
                ),
                width: 4, // Adjust the width as needed
                height: 38, // Adjust the height as needed
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                date.toUpperCase(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0A8357),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 14.0,
                          backgroundImage: AssetImage(imageUrl),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Flexible(
                          child: Text(
                            name,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 33),
                        child: Text(
                          time,
                          style: TextStyle(color: Colors.black45),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xffe6f7f1),
                    ),
                    child: const Center(
                      child: Text(
                        'Join call',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff0fbf80),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        )
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String name;
  final String date;
  final String time;
  final String amount;
  final String imageUrl;

  CustomListTile({
    required this.name,
    required this.date,
    required this.time,
    required this.amount,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 18.0,
            backgroundImage: AssetImage(imageUrl),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    date,
                    style: TextStyle(color: Colors.black38, fontSize: 12),
                  ),
                  Text(
                    ',',
                    style: TextStyle(color: Colors.black38),
                  ),
                  Text(
                    time,
                    style: TextStyle(color: Colors.black38, fontSize: 12),
                  )
                ],
              )
            ],
          ),
          trailing: Text(
            amount,
            style: TextStyle(color: Colors.red, fontSize: 16),
          ),
        ),
        SizedBox(
          height: 6,
        )
      ],
    );
  }
}

class CustomButton extends StatefulWidget {
  final String text;

  const CustomButton({super.key, required this.text});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Text(
        widget.text,
        style: TextStyle(
          color: isPressed ? Colors.black : Colors.black.withOpacity(0.3),
          fontWeight: isPressed ? FontWeight.bold : FontWeight.normal,
          fontSize: 15,
        ),
      ),
    );
  }
}

class CustomButton2 extends StatefulWidget {
  final String text;

  const CustomButton2({super.key, required this.text});

  @override
  State<CustomButton2> createState() => _CustomButtonState2();
}

class _CustomButtonState2 extends State<CustomButton2> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Text(
        widget.text,
        style: TextStyle(
          color: isPressed
              ? Color(0xff0A8357)
              : Color(0xff0A8357).withOpacity(0.5),
          fontWeight: isPressed ? FontWeight.bold : FontWeight.normal,
          fontSize: 15,
        ),
      ),
    );
  }
}

class UserContainer extends StatelessWidget {
  final String imageUrl;
  final String name;

  const UserContainer({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      // width: MediaQuery.of(context).size.width * 0.21,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurStyle: BlurStyle.outer,
            spreadRadius: 3.0,
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 15.0,
            backgroundImage: AssetImage(imageUrl),
          ),
          const SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 14,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Spacer(),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffe6f7f1),
                  ),
                  child: const Icon(
                    Icons.message_outlined,
                    size: 18,
                    color: Color(0xff0fbf80),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffe6f7f1),
                  ),
                  child: const Icon(
                    Icons.call,
                    size: 18,
                    color: Color(0xff0fbf80),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ClientContainer extends StatelessWidget {
  final String imageUrl;
  final String name;

  const ClientContainer({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          // width: MediaQuery.of(context).size.width * 0.21,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black12,
            //     blurRadius: 10.0,
            //     blurStyle: BlurStyle.outer,
            //   )
            // ],
          ),
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10.0),
          //   color: Colors.white,
          //   boxShadow: const [
          //     BoxShadow(
          //       color: Colors.black12,
          //       blurStyle: BlurStyle.outer,
          //       spreadRadius: 3.0,
          //       blurRadius: 3.0,
          //     ),
          //   ],
          // ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 15.0,
                backgroundImage: AssetImage(imageUrl),
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.7),
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffe6f7f1),
                      ),
                      child: const Icon(
                        Icons.message_outlined,
                        size: 18,
                        color: Color(0xff0fbf80),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xffe6f7f1),
                      ),
                      child: const Center(
                        child: Text(
                          'Call Request',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff0fbf80),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

// class MessageContainer extends StatelessWidget {
//   final String imageUrl;
//   final String name;
//   final String msgtxt;
//   final String time;
//
//   const MessageContainer({
//     super.key,
//     required this.imageUrl,
//     required this.name,
//     required this.msgtxt,
//     required this.time,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Container(
//           padding: const EdgeInsets.all(10),
//           // width: MediaQuery.of(context).size.width * 0.21,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.white,
//           ),
//
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CircleAvatar(
//                 radius: 15.0,
//                 backgroundImage: AssetImage(imageUrl),
//               ),
//               const SizedBox(
//                 width: 5,
//               ),
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         name,
//                         style: TextStyle(
//                           color: Colors.black.withOpacity(0.7),
//                           fontSize: 14,
//                           fontWeight: FontWeight.w900,
//                         ),
//                       ),
//                       SizedBox(
//                         width: size.width * 0.09,
//                       ),
//                       Text(
//                         time,
//                         style: TextStyle(
//                           color: Colors.black.withOpacity(0.4),
//                           fontSize: 12,
//                           fontWeight: FontWeight.w900,
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Text(
//                         msgtxt,
//                         style: TextStyle(
//                           color: Colors.black.withOpacity(0.4),
//                           fontSize: 14,
//                           fontWeight: FontWeight.w900,
//                         ),
//                       ),
//                       SizedBox(
//                         width: size.width * 0.03,
//                       ),
//                       Icon(
//                         Icons.arrow_forward_ios,
//                         size: 20,
//                         color: Color(0xff09BE7D),
//                       ),
//                     ],
//                   ),
//                 ],
//               )
//
//               // Column(
//               //   mainAxisAlignment: MainAxisAlignment.start,
//               //   children: [
//               //     Row(
//               //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               //       children: [
//               //         Text(
//               //           name,
//               //           style: TextStyle(
//               //             color: Colors.black.withOpacity(0.7),
//               //             fontSize: 14,
//               //             fontWeight: FontWeight.w900,
//               //           ),
//               //         ),
//               //         Text(
//               //           time,
//               //           style: TextStyle(
//               //             color: Colors.black.withOpacity(0.4),
//               //             fontSize: 12,
//               //             fontWeight: FontWeight.w900,
//               //           ),
//               //         ),
//               //       ],
//               //     ),
//               //     Row(
//               //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //       children: [
//               //         Text(
//               //           msgtxt,
//               //           style: TextStyle(
//               //             color: Colors.black.withOpacity(0.4),
//               //             fontSize: 14,
//               //             fontWeight: FontWeight.w900,
//               //           ),
//               //         ),
//               //         Icon(
//               //           Icons.arrow_forward_ios,
//               //           size: 20,
//               //           color: Color(0xff09BE7D),
//               //         )
//               //       ],
//               //     )
//               //   ],
//               // )
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         )
//       ],
//     );
//   }
// }
class MessageContainer extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String msgtxt;
  final String time;

  const MessageContainer({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.msgtxt,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 15.0,
                backgroundImage: AssetImage(imageUrl),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          time,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            msgtxt,
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            ),
                            overflow: TextOverflow.ellipsis, // Handle overflow
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xff09BE7D),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

//edit profile textfield reusable containers
class EditProfileWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;

  EditProfileWidget({
    required this.labelText,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0).copyWith(top: 5),
          child: Text(
            labelText,
            style: TextStyle(color: Colors.black54, fontSize: 12),
          ),
        ),
        Container(
          height: 40,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black26),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0).copyWith(top: 5),
            child: TextField(
              controller: controller,
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(fontSize: 14),
                border: InputBorder.none,
                suffixIcon: Icon(
                  Icons.edit,
                  size: 15,
                  color: Color(0xff06CC85),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

//image picker
Future<List<File>> pickImages() async {
  List<File> images = [];
  try {
    var files = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );
    if (files != null && files.files.isNotEmpty) {
      for (int i = 0; i < files.files.length; i++) {
        images.add(File(files.files[i].path!));
      }
    }
  } catch (e) {
    debugPrint(e.toString());
  }
  return images;
}

//file picker
Future<List<File>> pickFile() async {
  List<File> images = [];
  List<String> allowedExtensions = ['jpg', 'jpeg', 'png', 'gif', 'pdf'];

  try {
    var files = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowMultiple: true,
      allowedExtensions: allowedExtensions,
    );

    if (files != null && files.files.isNotEmpty) {
      for (int i = 0; i < files.files.length; i++) {
        images.add(File(files.files[i].path!));
      }
    }
  } catch (e) {
    debugPrint(e.toString());
  }
  return images;
}

// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_social_button/flutter_social_button.dart';
// import 'package:mended_mender/mender/colors.dart';
// import 'package:mended_mender/mender/widgets/balance_card.dart';
// import 'package:mended_mender/mender/widgets/top_bar.dart';
// import '../widgets/custom_elevated_button.dart';
// import '../widgets/next_session_widget.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';
//
// class MenderHomeScreen extends StatefulWidget {
//   const MenderHomeScreen({super.key});
//
//   @override
//   State<MenderHomeScreen> createState() => _MenderHomeScreenState();
// }
//
// class _MenderHomeScreenState extends State<MenderHomeScreen> {
//   TextEditingController SearchController = TextEditingController();
//   int selectedIndex = 4;
//   List usersList = [
//     const UserContainer(
//       imageUrl: 'assets/mender/profileimage.png',
//       name: 'Ramisha Rasheed',
//     ),
//     const UserContainer(
//       imageUrl: 'assets/mender/images2.jpeg',
//       name: 'Sara Ali Khan',
//     ),
//     const UserContainer(
//       imageUrl: 'assets/mender/images3.jpeg',
//       name: 'Johnny White',
//     ),
//     const UserContainer(
//       imageUrl: 'assets/mender/images4.jpeg',
//       name: 'Don John ',
//     ),
//     const UserContainer(
//       imageUrl: 'assets/mender/images1.jpg',
//       name: 'White Parker',
//     )
//   ];
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     print(size.width);
//
//     return Container(
//       decoration: const BoxDecoration(
//           image: DecorationImage(
//               fit: BoxFit.cover,
//               image: AssetImage("assets/mender/main_background.png"))),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TopBar(
//                     row: [
//                       const Spacer(),
//                       GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             selectedIndex = 0;
//                           });
//                         },
//                         child: getButton(
//                             Icons.play_circle, "Flicks", selectedIndex == 0),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             selectedIndex = 1;
//                           });
//                         },
//                         child: getButton(Icons.calendar_month, "Calendar",
//                             selectedIndex == 1),
//                       ),
//                       GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               selectedIndex = 2;
//                             });
//                           },
//                           child: getButton(
//                               Icons.wallet, "Wallet", selectedIndex == 2)),
//                       GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               selectedIndex = 3;
//                             });
//                           },
//                           child: getButton(
//                               Icons.group, "Client list", selectedIndex == 3)),
//                       GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               selectedIndex = 4;
//                             });
//                           },
//                           child: getButton(
//                               Icons.message, "Messages", selectedIndex == 4)),
//                       GestureDetector(
//                           onTap: () {
//                             setState(() {
//                               selectedIndex = 5;
//                             });
//                           },
//                           child: getButton(
//                               Icons.person, "Profile", selectedIndex == 5)),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: size.height * 0.04,
//               ),
//               SizedBox(
//                 height: size.height * 0.03,
//               ),
//               SizedBox(
//                 width: size.width / 1.1,
//                 child: Center(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     // crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'Your balance',
//                             style: TextStyle(color: Colors.black45),
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           BalanceCard(
//                               title: 'Total Balance',
//                               totalBalance: '\$224.57',
//                               onButtonPressed: null),
//                           const SizedBox(
//                             height: 10,
//                           ),
//                           InkWell(
//                             onTap: () {},
//                             child: const Text(
//                               'Go to my wallet',
//                               style: TextStyle(
//                                 fontSize: 13.0,
//                                 color: Color(0xff09be7d), // Text color
//                                 decoration:
//                                     TextDecoration.underline, // Add underline
//                                 decorationStyle: TextDecorationStyle
//                                     .solid, // Solid underline style
//                                 decorationColor: Color(0xff09be7d),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: size.height * 0.70,
//                           ),
//                           Container(
//                             padding:
//                                 EdgeInsets.only(bottom: size.height * 0.03),
//                             height: 60,
//                             width: 60,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(100),
//                               image: const DecorationImage(
//                                 image: AssetImage('assets/mender/logo.png'),
//                               ),
//                               boxShadow: const [
//                                 BoxShadow(
//                                   color: Colors.black38,
//                                   blurStyle: BlurStyle.outer,
//                                   blurRadius: 4,
//                                   spreadRadius: 3.0,
//                                 ),
//                               ],
//                               color: const Color(0xfff5fcf9),
//                             ),
//                           ),
//                           SizedBox(
//                             height: size.height * 0.03,
//                           ),
//                         ],
//                       ),
//                       getMainWidget(size),
//                       SizedBox(
//                         height: size.height,
//                         width: 270,
//                         child: Column(
//                           children: [
//                             //first card
//                             NextSessionCard(
//                               title: 'Your next session',
//                               date: '07 September 2023',
//                               buddyName: 'Alejandra Vega',
//                               time: '12:00 - 16:00',
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             Flexible(
//                               child: Container(
//                                 // height: size.height * 0.09,
//                                 padding: const EdgeInsets.all(15),
//                                 // width: size.width * 0.21,
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10.0),
//                                   color: Colors.white,
//                                   border: Border.all(color: Colors.black12),
//                                 ),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     const Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           'Buddies',
//                                           style: TextStyle(
//                                               color: Colors.black54,
//                                               fontSize: 15),
//                                         ),
//                                         SizedBox(
//                                           width: 150,
//                                         ),
//                                         Icon(
//                                           Icons.search,
//                                           color: Colors.black38,
//                                           size: 22,
//                                         )
//                                       ],
//                                     ),
//                                     const SizedBox(
//                                       height: 12,
//                                     ),
//                                     Flexible(
//                                       child: ListView.builder(
//                                           itemCount: usersList.length,
//                                           itemBuilder: (context, index) {
//                                             return Column(
//                                               children: [
//                                                 usersList[index],
//                                                 const SizedBox(
//                                                   height: 10,
//                                                 )
//                                               ],
//                                             );
//                                           }),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: size.height * 0.06,
//                             ),
//                             const Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Privacy - Terms & Cond. Mender ',
//                                   style: TextStyle(
//                                       color: Colors.black38, fontSize: 13),
//                                 ),
//                                 SizedBox(
//                                   width: 4,
//                                 ),
//                                 Icon(
//                                   Icons.copyright,
//                                   size: 15,
//                                   color: Colors.black26,
//                                 ),
//                                 Text(
//                                   '2023 ',
//                                   style: TextStyle(
//                                       color: Colors.black26, fontSize: 13),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: size.height * 0.02,
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget getCard(
//     Size size,
//   ) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               boxShadow: const [
//                 // BoxShadow(
//                 //   color: Colors.black38,
//                 //   blurStyle: BlurStyle.outer,
//                 //   blurRadius: 8,
//                 //   spreadRadius: 2.0,
//                 // ),
//               ],
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const CircleAvatar(
//                       radius: 15.0,
//                       backgroundImage:
//                           AssetImage('assets/mender/profileimage.png'),
//                     ),
//                     const SizedBox(
//                       width: 3,
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.only(top: 5),
//                       child: Text(
//                         'Aria',
//                         style: TextStyle(
//                             color: Colors.black38,
//                             fontSize: 15,
//                             fontWeight: FontWeight.w900),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 3,
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.only(top: 5),
//                       child: Image(
//                         height: 20,
//                         width: 20,
//                         image: AssetImage('assets/mender/stars.png'),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 6,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 5),
//                       child: InkWell(
//                         onTap: () {},
//                         child: const FaIcon(
//                           FontAwesomeIcons.userPlus,
//                           color: Color(0xff82e5c1),
//                           size: 15,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 // Padding(
//                 //   padding:
//                 //       const EdgeInsets.symmetric(vertical: 10),
//                 //   child: Container(
//                 //     // height: size,
//                 //     width: size.width / 3.2,
//                 //     decoration: BoxDecoration(
//                 //       borderRadius: BorderRadius.circular(15.0),
//                 //       color: Colors.green,
//                 //       image: const DecorationImage(
//                 //           image: AssetImage(
//                 //               'assets/mender/beachview.jpg'),
//                 //           fit: BoxFit.cover),
//                 //     ),
//                 //   ),
//                 // ),
//                 Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 10),
//                     child: CachedNetworkImage(
//                       imageUrl:
//                           "https://hips.hearstapps.com/hmg-prod/images/img-1484-jpg-649644d3c1386.jpg?crop=0.571xw:0.762xh;0.240xw,0.195xh&resize=1200:*",
//                       width: size.width,
//                     )),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         InkWell(
//                             onTap: () {},
//                             child: const FaIcon(
//                               FontAwesomeIcons.heart,
//                               size: 22.0,
//                               color: Color(0xff2dbfb4),
//                             )),
//                         const SizedBox(
//                           width: 15,
//                         ),
//                         InkWell(
//                             onTap: () {},
//                             child: const FaIcon(
//                               FontAwesomeIcons.message,
//                               size: 19.0,
//                               color: Color(0xff2dbfb4),
//                             )),
//                       ],
//                     ),
//                     InkWell(
//                       onTap: () {},
//                       child: const FaIcon(
//                         FontAwesomeIcons.shareFromSquare,
//                         size: 20.0,
//                         color: Color(0xff2dbfb4),
//                       ),
//                     )
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 RichText(
//                   text: const TextSpan(
//                     children: [
//                       TextSpan(
//                         text: '741,368',
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.black54,
//                         ),
//                       ),
//                       TextSpan(
//                         text: ' views',
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.black54,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 const Text(
//                   '#beautifulday #soundcheck #stressrelie',
//                   style: TextStyle(color: Colors.black54, fontSize: 12),
//                 ),
//                 const SizedBox(
//                   height: 5,
//                 ),
//                 const Text(
//                   'view all 13384 comments',
//                   style: TextStyle(color: Colors.black26, fontSize: 10),
//                 ),
//                 const SizedBox(
//                   height: 7,
//                 ),
//                 const Text(
//                   'Add a comment...',
//                   style: TextStyle(color: Colors.black38, fontSize: 12),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             alignment: Alignment.bottomRight,
//             padding: EdgeInsets.only(bottom: size.height * 0.03),
//             height: 30,
//             width: 30,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(100),
//               image: const DecorationImage(
//                 image: AssetImage('assets/mender/plus.png'),
//               ),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Colors.black38,
//                   blurStyle: BlurStyle.outer,
//                   blurRadius: 4,
//                   spreadRadius: 3.0,
//                 ),
//               ],
//               color: const Color(0xfff5fcf9),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget getButton(IconData icon, String title, bool isSelected) {
//     Color color = Colors.grey;
//     if (isSelected) {
//       color = MenderColors.primaryColor;
//     }
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Row(
//         children: [
//           Icon(
//             icon,
//             size: 20,
//             color: color,
//           ),
//           const SizedBox(
//             width: 5,
//           ),
//           Text(
//             title,
//             style: TextStyle(color: color, fontSize: 18),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget getFlicksWidget(size) {
//     return SizedBox(
//         height: size.height,
//         width: size.width / 2.2,
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const CustomButton(text: 'Friends'),
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 25),
//                   width: 0.5, // Adjust the width as needed
//                   height: 20.0, // Adjust the height as needed
//                   color: Colors.black,
//                 ),
//                 const CustomButton(text: 'Popular'),
//               ],
//             ),
//             Expanded(
//               child: ListView.builder(
//                   shrinkWrap: true,
//                   itemBuilder: (context, index) {
//                     return getCard(size);
//                   }),
//             ),
//           ],
//         ));
//   }
//
//   Widget getCalendarWidget(size) {
//     return SizedBox(
//         height: size.height,
//         width: size.width / 2.8,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 color: Colors.white,
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 10.0,
//                     blurStyle: BlurStyle.outer,
//                   )
//                 ],
//               ),
//               child: SfDateRangePicker(
//                 onSelectionChanged: _onSelectionChanged,
//                 selectionMode: DateRangePickerSelectionMode.range,
//               ),
//             ),
//             const SizedBox(
//               height: 18,
//             ),
//             const Padding(
//               padding: EdgeInsets.only(left: 20),
//               child: Column(
//                 children: [
//                   Align(
//                     alignment: Alignment.topLeft,
//                     child: Text(
//                       '23 October 2023',
//                       style: TextStyle(color: Colors.black38, fontSize: 16),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   ReminderContainer(
//                     name: 'Snugglebug Session',
//                     time: '1:00 - 2:00 PM',
//                     date: '23\nOct',
//                     imageUrl: 'assets/mender/images1.jpg',
//                   ),
//                   ReminderContainer(
//                     name: 'kai Liu Session',
//                     time: '5:00 - 6:00 PM',
//                     date: '24\nOct',
//                     imageUrl: 'assets/mender/images2.jpeg',
//                   )
//
//                   // reminderContainer(
//                   //   name: 'kai Liu Session',
//                   //   time: '5:00 - 6:00 PM',
//                   //   date: '24\nOct',
//                   //   imageUrl: 'assets/mender/images2.jpeg',
//                   // )
//                 ],
//               ),
//             ),
//             // ListView.builder(
//             //     shrinkWrap: true,
//             //     itemBuilder: (context, index) {
//             //       return getCard(size);
//             //     }),
//           ],
//         ));
//   }
//
//   void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
//     // TODO: implement your code here
//   }
//
//   Widget getWalletWidget(size) {
//     return SizedBox(
//       height: size.height,
//       width: size.width / 2.8,
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               // width: size.width * 0.16,
//               // height: size.height * 0.15,
//               height: 150,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 color: const Color(0xff82e5c1),
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black12,
//                     blurRadius: 10.0,
//                     blurStyle: BlurStyle.outer,
//                   )
//                 ],
//               ),
//               child: Container(
//                 // width: size.width * 0.16,
//                 // height: size.height * 0.15,
//                 height: 150,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     bottomRight: Radius.circular(65.0),
//                     topLeft: Radius.circular(10.0),
//                     topRight: Radius.circular(10.0),
//                     bottomLeft: Radius.circular(10.0),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   child: Row(
//                     children: [
//                       const Column(
//                         children: [
//                           Text(
//                             'Total Balance',
//                             style: TextStyle(color: Colors.black54),
//                           ),
//                           SizedBox(height: 20),
//                           Text(
//                             '\$247.52',
//                             style: TextStyle(
//                               fontSize: 35,
//                               fontWeight: FontWeight.w900,
//                               color: Color(0xff05b475),
//                             ),
//                           ),
//                         ],
//                       ),
//                       // const SizedBox(width: 150.0),
//                       const Spacer(),
//                       CustomElevatedButton(title: 'Withdraw', callback: () {}),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30),
//             Container(
//               // width: 400,
//               height: 600,
//               // color: Colors.white,
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       const Text('Last Mended Session'),
//                       const SizedBox(width: 180),
//                       InkWell(
//                         onTap: () {},
//                         child: const Text(
//                           'view all',
//                           style: TextStyle(color: Color(0xff05b475)),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 15),
//                   ListView.builder(
//                     shrinkWrap: true,
//                     itemCount:
//                         3, // Replace with the actual number of items in your list
//                     itemBuilder: (BuildContext context, int index) {
//                       return Column(
//                         children: [
//                           Container(
//                             width: 400,
//                             height: 70,
//                             color: Colors.white,
//                             child: Row(
//                               children: [
//                                 const CircleAvatar(
//                                   radius: 25,
//                                   backgroundImage:
//                                       AssetImage('assets/mender/avatar1.jpg'),
//                                 ),
//                                 const SizedBox(width: 20),
//                                 const Column(
//                                   children: [
//                                     Padding(
//                                       padding: EdgeInsets.only(top: 13.0),
//                                       child: Text('Snugglebug',
//                                           style:
//                                               TextStyle(color: Colors.black)),
//                                     ),
//                                     SizedBox(height: 10),
//                                     Text('Oct 14, 10:24 PM',
//                                         style:
//                                             TextStyle(color: Colors.black38)),
//                                   ],
//                                 ),
//                                 const SizedBox(width: 140),
//                                 Text('-\$15.00',
//                                     style:
//                                         TextStyle(color: Colors.red.shade900)),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                         ],
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget getMainWidget(size) {
//     if (selectedIndex == 0) {
//       return getFlicksWidget(size);
//     }
//     if (selectedIndex == 1) {
//       return getCalendarWidget(size);
//     }
//     if (selectedIndex == 2) {
//       return getWalletWidget(size);
//     }
//     if (selectedIndex == 3) {
//       return SizedBox(
//         height: size.height,
//         width: size.width / 2.2,
//         child: ListView.builder(
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return getCard(size);
//             }),
//       );
//     }
//     if (selectedIndex == 4) {
//       return SizedBox(
//         height: size.height,
//         width: size.width / 2.2,
//         child: ListView.builder(
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return getCard(size);
//             }),
//       );
//     }
//     return SizedBox(
//       height: size.height,
//       width: size.width / 2.2,
//       child: ListView.builder(
//           shrinkWrap: true,
//           itemBuilder: (context, index) {
//             return getCard(size);
//           }),
//     );
//   }
// }
//
// class ReminderContainer extends StatelessWidget {
//   final String date;
//   final String time;
//   final String name;
//   final String imageUrl;
//
//   const ReminderContainer({
//     required this.date,
//     required this.time,
//     required this.name,
//     required this.imageUrl,
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(left: 20),
//       margin: const EdgeInsets.only(bottom: 10),
//       child: Row(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               color: const Color(0xff0A8357),
//             ),
//             width: 4, // Adjust the width as needed
//             height: 36, // Adjust the height as needed
//           ),
//           const SizedBox(
//             width: 8,
//           ),
//           Text(
//             date.toUpperCase(),
//             style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.bold,
//               color: Color(0xff0A8357),
//             ),
//           ),
//           const SizedBox(
//             width: 8,
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     CircleAvatar(
//                       radius: 12.0,
//                       backgroundImage: AssetImage(imageUrl),
//                     ),
//                     Expanded(
//                       child: Text(
//                         name,
//                         style:
//                             const TextStyle(color: Colors.black, fontSize: 15),
//                       ),
//                     )
//                   ],
//                 ),
//                 Center(
//                   child: Text(
//                     time,
//                     style: const TextStyle(color: Colors.black45),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(
//             width: 15,
//           ),
//           Flexible(
//             child: InkWell(
//               onTap: () {},
//               child: Container(
//                 height: 30,
//                 width: 60,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(50),
//                   color: const Color(0xffe6f7f1),
//                 ),
//                 child: const Center(
//                   child: Text(
//                     'Join call',
//                     style: TextStyle(
//                         fontSize: 12,
//                         color: Color(0xff0fbf80),
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class CustomListTile extends StatelessWidget {
//   final String name;
//   final String date;
//   final String time;
//   final String amount;
//   final String imageUrl;
//
//   CustomListTile({
//     required this.name,
//     required this.date,
//     required this.time,
//     required this.amount,
//     required this.imageUrl,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ListTile(
//           leading: CircleAvatar(
//             radius: 18.0,
//             backgroundImage: AssetImage(imageUrl),
//           ),
//           title: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 name,
//                 style: const TextStyle(color: Colors.black, fontSize: 16),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     date,
//                     style: const TextStyle(color: Colors.black38, fontSize: 12),
//                   ),
//                   const Text(
//                     ',',
//                     style: TextStyle(color: Colors.black38),
//                   ),
//                   Text(
//                     time,
//                     style: const TextStyle(color: Colors.black38, fontSize: 12),
//                   )
//                 ],
//               )
//             ],
//           ),
//           trailing: Text(
//             amount,
//             style: const TextStyle(color: Colors.red, fontSize: 16),
//           ),
//         ),
//         const SizedBox(
//           height: 6,
//         )
//       ],
//     );
//   }
// }
//
// class CustomButton extends StatefulWidget {
//   final String text;
//
//   const CustomButton({super.key, required this.text});
//
//   @override
//   State<CustomButton> createState() => _CustomButtonState();
// }
//
// class _CustomButtonState extends State<CustomButton> {
//   bool isPressed = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () {
//         setState(() {
//           isPressed = !isPressed;
//         });
//       },
//       child: Text(
//         widget.text,
//         style: TextStyle(
//           color: isPressed ? Colors.black : Colors.black.withOpacity(0.3),
//           fontWeight: isPressed ? FontWeight.bold : FontWeight.normal,
//           fontSize: 15,
//         ),
//       ),
//     );
//   }
// }
//
// class CustomButton2 extends StatefulWidget {
//   final String text;
//
//   const CustomButton2({super.key, required this.text});
//
//   @override
//   State<CustomButton2> createState() => _CustomButtonState2();
// }
//
// class _CustomButtonState2 extends State<CustomButton2> {
//   bool isPressed = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () {
//         setState(() {
//           isPressed = !isPressed;
//         });
//       },
//       child: Text(
//         widget.text,
//         style: TextStyle(
//           color: isPressed
//               ? const Color(0xff0A8357)
//               : const Color(0xff0A8357).withOpacity(0.5),
//           fontWeight: isPressed ? FontWeight.bold : FontWeight.normal,
//           fontSize: 15,
//         ),
//       ),
//     );
//   }
// }
//
// class UserContainer extends StatelessWidget {
//   final String imageUrl;
//   final String name;
//
//   const UserContainer({
//     super.key,
//     required this.imageUrl,
//     required this.name,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(10),
//       // width: MediaQuery.of(context).size.width * 0.21,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.0),
//         color: Colors.white,
//         boxShadow: const [
//           BoxShadow(
//             color: Colors.black12,
//             blurStyle: BlurStyle.outer,
//             spreadRadius: 3.0,
//             blurRadius: 3.0,
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           CircleAvatar(
//             radius: 15.0,
//             backgroundImage: AssetImage(imageUrl),
//           ),
//           const SizedBox(
//             width: 5,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 5),
//             child: Text(
//               name,
//               style: TextStyle(
//                 color: Colors.black.withOpacity(0.7),
//                 fontSize: 14,
//                 fontWeight: FontWeight.w900,
//               ),
//             ),
//           ),
//           const Spacer(),
//           Row(
//             children: [
//               InkWell(
//                 onTap: () {},
//                 child: Container(
//                   padding: const EdgeInsets.all(5),
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Color(0xffe6f7f1),
//                   ),
//                   child: const Icon(
//                     Icons.message_outlined,
//                     size: 18,
//                     color: Color(0xff0fbf80),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 width: 5,
//               ),
//               InkWell(
//                 onTap: () {},
//                 child: Container(
//                   padding: const EdgeInsets.all(5),
//                   decoration: const BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Color(0xffe6f7f1),
//                   ),
//                   child: const Icon(
//                     Icons.call,
//                     size: 18,
//                     color: Color(0xff0fbf80),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ClientContainer extends StatelessWidget {
//   final String imageUrl;
//   final String name;
//
//   const ClientContainer({
//     super.key,
//     required this.imageUrl,
//     required this.name,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           padding: const EdgeInsets.all(10),
//           // width: MediaQuery.of(context).size.width * 0.21,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.white,
//             // boxShadow: [
//             //   BoxShadow(
//             //     color: Colors.black12,
//             //     blurRadius: 10.0,
//             //     blurStyle: BlurStyle.outer,
//             //   )
//             // ],
//           ),
//           // decoration: BoxDecoration(
//           //   borderRadius: BorderRadius.circular(10.0),
//           //   color: Colors.white,
//           //   boxShadow: const [
//           //     BoxShadow(
//           //       color: Colors.black12,
//           //       blurStyle: BlurStyle.outer,
//           //       spreadRadius: 3.0,
//           //       blurRadius: 3.0,
//           //     ),
//           //   ],
//           // ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CircleAvatar(
//                 radius: 15.0,
//                 backgroundImage: AssetImage(imageUrl),
//               ),
//               const SizedBox(
//                 width: 5,
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 5),
//                 child: Text(
//                   name,
//                   style: TextStyle(
//                     color: Colors.black.withOpacity(0.7),
//                     fontSize: 14,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ),
//               const Spacer(),
//               Row(
//                 children: [
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                       padding: const EdgeInsets.all(5),
//                       decoration: const BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Color(0xffe6f7f1),
//                       ),
//                       child: const Icon(
//                         Icons.message_outlined,
//                         size: 18,
//                         color: Color(0xff0fbf80),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 5,
//                   ),
//                   InkWell(
//                     onTap: () {},
//                     child: Container(
//                       padding: const EdgeInsets.all(8),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(50),
//                         color: const Color(0xffe6f7f1),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           'Call Request',
//                           style: TextStyle(
//                               fontSize: 12,
//                               color: Color(0xff0fbf80),
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         )
//       ],
//     );
//   }
// }
//
// // class MessageContainer extends StatelessWidget {
// //   final String imageUrl;
// //   final String name;
// //   final String msgtxt;
// //   final String time;
// //
// //   const MessageContainer({
// //     super.key,
// //     required this.imageUrl,
// //     required this.name,
// //     required this.msgtxt,
// //     required this.time,
// //   });
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     var size = MediaQuery.of(context).size;
// //     return Column(
// //       children: [
// //         Container(
// //           padding: const EdgeInsets.all(10),
// //           // width: MediaQuery.of(context).size.width * 0.21,
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(10),
// //             color: Colors.white,
// //           ),
// //
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.start,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               CircleAvatar(
// //                 radius: 15.0,
// //                 backgroundImage: AssetImage(imageUrl),
// //               ),
// //               const SizedBox(
// //                 width: 5,
// //               ),
// //               Column(
// //                 mainAxisAlignment: MainAxisAlignment.start,
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Row(
// //                     children: [
// //                       Text(
// //                         name,
// //                         style: TextStyle(
// //                           color: Colors.black.withOpacity(0.7),
// //                           fontSize: 14,
// //                           fontWeight: FontWeight.w900,
// //                         ),
// //                       ),
// //                       SizedBox(
// //                         width: size.width * 0.09,
// //                       ),
// //                       Text(
// //                         time,
// //                         style: TextStyle(
// //                           color: Colors.black.withOpacity(0.4),
// //                           fontSize: 12,
// //                           fontWeight: FontWeight.w900,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                   Row(
// //                     children: [
// //                       Text(
// //                         msgtxt,
// //                         style: TextStyle(
// //                           color: Colors.black.withOpacity(0.4),
// //                           fontSize: 14,
// //                           fontWeight: FontWeight.w900,
// //                         ),
// //                       ),
// //                       SizedBox(
// //                         width: size.width * 0.03,
// //                       ),
// //                       Icon(
// //                         Icons.arrow_forward_ios,
// //                         size: 20,
// //                         color: Color(0xff09BE7D),
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               )
// //
// //               // Column(
// //               //   mainAxisAlignment: MainAxisAlignment.start,
// //               //   children: [
// //               //     Row(
// //               //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               //       children: [
// //               //         Text(
// //               //           name,
// //               //           style: TextStyle(
// //               //             color: Colors.black.withOpacity(0.7),
// //               //             fontSize: 14,
// //               //             fontWeight: FontWeight.w900,
// //               //           ),
// //               //         ),
// //               //         Text(
// //               //           time,
// //               //           style: TextStyle(
// //               //             color: Colors.black.withOpacity(0.4),
// //               //             fontSize: 12,
// //               //             fontWeight: FontWeight.w900,
// //               //           ),
// //               //         ),
// //               //       ],
// //               //     ),
// //               //     Row(
// //               //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               //       children: [
// //               //         Text(
// //               //           msgtxt,
// //               //           style: TextStyle(
// //               //             color: Colors.black.withOpacity(0.4),
// //               //             fontSize: 14,
// //               //             fontWeight: FontWeight.w900,
// //               //           ),
// //               //         ),
// //               //         Icon(
// //               //           Icons.arrow_forward_ios,
// //               //           size: 20,
// //               //           color: Color(0xff09BE7D),
// //               //         )
// //               //       ],
// //               //     )
// //               //   ],
// //               // )
// //             ],
// //           ),
// //         ),
// //         SizedBox(
// //           height: 10,
// //         )
// //       ],
// //     );
// //   }
// // }
// class MessageContainer extends StatelessWidget {
//   final String imageUrl;
//   final String name;
//   final String msgtxt;
//   final String time;
//
//   const MessageContainer({
//     Key? key,
//     required this.imageUrl,
//     required this.name,
//     required this.msgtxt,
//     required this.time,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Container(
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10),
//             color: Colors.white,
//           ),
//           child: Row(
//             children: [
//               CircleAvatar(
//                 radius: 15.0,
//                 backgroundImage: AssetImage(imageUrl),
//               ),
//               const SizedBox(width: 5),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           name,
//                           style: TextStyle(
//                             color: Colors.black.withOpacity(0.7),
//                             fontSize: 14,
//                             fontWeight: FontWeight.w900,
//                           ),
//                         ),
//                         Text(
//                           time,
//                           style: TextStyle(
//                             color: Colors.black.withOpacity(0.4),
//                             fontSize: 12,
//                             fontWeight: FontWeight.w900,
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Flexible(
//                           child: Text(
//                             msgtxt,
//                             style: TextStyle(
//                               color: Colors.black.withOpacity(0.4),
//                               fontSize: 14,
//                               fontWeight: FontWeight.w900,
//                             ),
//                             overflow: TextOverflow.ellipsis, // Handle overflow
//                           ),
//                         ),
//                         const Icon(
//                           Icons.arrow_forward_ios,
//                           size: 20,
//                           color: Color(0xff09BE7D),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(height: 10),
//       ],
//     );
//   }
// }
