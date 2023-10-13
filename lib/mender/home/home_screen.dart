import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mended_mender/mender/colors.dart';
import 'package:mended_mender/mender/widgets/balance_card.dart';
import 'package:mended_mender/mender/widgets/top_bar.dart';
import '../widgets/next_session_widget.dart';

class MenderHomeScreen extends StatefulWidget {
  const MenderHomeScreen({super.key});

  @override
  State<MenderHomeScreen> createState() => _MenderHomeScreenState();
}

class _MenderHomeScreenState extends State<MenderHomeScreen> {
  int selectedIndex = 1;
  List usersList = [
    const UserContainer(
      imageUrl: 'assets/mender/profileimage.png',
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
              SizedBox(
                height: size.height * 0.04,
              ),
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
              SizedBox(
                height: size.height * 0.03,
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
                          BalanceCard(
                              title: 'Total Balance',
                              totalBalance: '\$224.57',
                              onButtonPressed: null),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {},
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
                          SizedBox(
                            height: size.height * 0.50,
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
                              height: size.height * 0.08,
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
                            )
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

  Widget getCard(
    Size size,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              boxShadow: const [
                // BoxShadow(
                //   color: Colors.black38,
                //   blurStyle: BlurStyle.outer,
                //   blurRadius: 8,
                //   spreadRadius: 2.0,
                // ),
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
                          AssetImage('assets/mender/profileimage.png'),
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
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://hips.hearstapps.com/hmg-prod/images/img-1484-jpg-649644d3c1386.jpg?crop=0.571xw:0.762xh;0.240xw,0.195xh&resize=1200:*",
                      width: size.width,
                    )),
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
          Container(
            padding: EdgeInsets.only(bottom: size.height * 0.03),
            height: 30,
            width: 30,
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
        ],
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
      width: size.width / 2.2,
      child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return getCard(size);
          }),
    );
  }

  Widget getCalendarWidget(size) {
    return Center(
      child: Text("Calendar"),
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
      return SizedBox(
        height: size.height,
        width: size.width / 2.2,
        child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return getCard(size);
            }),
      );
    }
    if (selectedIndex == 3) {
      return SizedBox(
        height: size.height,
        width: size.width / 2.2,
        child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return getCard(size);
            }),
      );
    }
    if (selectedIndex == 4) {
      return SizedBox(
        height: size.height,
        width: size.width / 2.2,
        child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return getCard(size);
            }),
      );
    }
    return SizedBox(
      height: size.height,
      width: size.width / 2.2,
      child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return getCard(size);
          }),
    );
  }
}
// void

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
              Container(
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
              SizedBox(
                width: 5,
              ),
              Container(
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
            ],
          ),
        ],
      ),
    );
  }
}
