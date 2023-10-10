import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mended_mender/mender/widgets/balance_card.dart';
import 'package:mended_mender/mender/widgets/top_bar.dart';
import '../widgets/next_session_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/mender/main_background.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TopBar(
                  row: [
                    Spacer(),
                    getButton(Icons.play_circle, "Flicks", true),
                    getButton(Icons.calendar_month, "Calendar", false),
                    getButton(Icons.wallet, "Wallet", false),
                    getButton(Icons.group, "Client list", false),
                    getButton(Icons.message, "Messages", false),
                    getButton(Icons.person, "Profile", false),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SizedBox(
              width: size.width / 1.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your balance',
                        style: TextStyle(color: Colors.black45),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      BalanceCard(
                          title: 'Total Balance',
                          totalBalance: '\$224.57',
                          onButtonPressed: null),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
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
                        padding: EdgeInsets.only(bottom: size.height * 0.03),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: AssetImage('assets/mender/logo.png'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 4,
                              spreadRadius: 3.0,
                            ),
                          ],
                          color: Color(0xfff5fcf9),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.17,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(text: 'Friends'),
                          // TextButton(
                          //   onPressed: () {},
                          //   child: Text(
                          //     'Friends',
                          //     style: TextStyle(
                          //         color: Colors.black.withOpacity(0.3)),
                          //   ),
                          // ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            width: 0.5, // Adjust the width as needed
                            height: 20.0, // Adjust the height as needed
                            color: Colors.black,
                          ),
                          CustomButton(text: 'Popular'),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 8,
                              spreadRadius: 2.0,
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
                                CircleAvatar(
                                  radius: 15.0,
                                  backgroundImage: AssetImage(
                                      'assets/mender/profileimage.png'),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Text(
                                    'Aria',
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: Image(
                                    height: 20,
                                    width: 20,
                                    image:
                                        AssetImage('assets/mender/stars.png'),
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                  child: InkWell(
                                    onTap: () {},
                                    child: FaIcon(
                                      FontAwesomeIcons.userPlus,
                                      color: Color(0xff82e5c1),
                                      size: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Container(
                                height: 320,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.green,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/mender/beachview.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: FaIcon(
                                      FontAwesomeIcons.heart,
                                      size: 22.0,
                                      color: Color(0xff2dbfb4),
                                    )),
                                SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                    onTap: () {},
                                    child: FaIcon(
                                      FontAwesomeIcons.message,
                                      size: 19.0,
                                      color: Color(0xff2dbfb4),
                                    )),
                                SizedBox(
                                  width: 215,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: FaIcon(
                                    FontAwesomeIcons.shareFromSquare,
                                    size: 20.0,
                                    color: Color(0xff2dbfb4),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            RichText(
                              text: TextSpan(
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
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '#beautifulday #soundcheck #stressrelie',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 12),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'view all 13384 comments',
                              style: TextStyle(
                                  color: Colors.black26, fontSize: 10),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Add a comment...',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 12),
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
                          image: DecorationImage(
                            image: AssetImage('assets/mender/logo.png'),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurStyle: BlurStyle.outer,
                              blurRadius: 4,
                              spreadRadius: 3.0,
                            ),
                          ],
                          color: Color(0xfff5fcf9),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.10,
                  ),
                  Column(
                    children: [
                      //first card
                      NextSessionCard(
                        title: 'Your next session',
                        date: '07 September 2023',
                        buddyName: 'Alejandra Vega',
                        time: '12:00 - 16:00',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        width: size.width * 0.21,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Buddies',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15),
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
                            SizedBox(
                              height: 12,
                            ),
                            UserContainer(
                              imageUrl: 'assets/mender/profileimage.png',
                              name: 'Ramisha Rasheed',
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            UserContainer(
                              imageUrl: 'assets/mender/images2.jpeg',
                              name: 'Sara Ali Khan',
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            UserContainer(
                              imageUrl: 'assets/mender/images3.jpeg',
                              name: 'Johnny White',
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            UserContainer(
                              imageUrl: 'assets/mender/images4.jpeg',
                              name: 'Don John ',
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            UserContainer(
                              imageUrl: 'assets/mender/images1.jpg',
                              name: 'White Parker',
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.08,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Privacy - Terms & Cond. Mender ',
                            style:
                                TextStyle(color: Colors.black38, fontSize: 13),
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
                            style:
                                TextStyle(color: Colors.black26, fontSize: 13),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getButton(IconData icon, String title, bool isSelected) {
    Color color = Colors.black54;
    if (isSelected) {
      color = Colors.green;
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
}

class CustomButton extends StatefulWidget {
  final String text;

  CustomButton({required this.text});

  @override
  _CustomButtonState createState() => _CustomButtonState();
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

  UserContainer({
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.21,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
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
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffe6f7f1),
                  ),
                  child: Icon(
                    Icons.message_outlined,
                    size: 18,
                    color: Color(0xff0fbf80),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffe6f7f1),
                  ),
                  child: Icon(
                    Icons.call,
                    size: 18,
                    color: Color(0xff0fbf80),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
