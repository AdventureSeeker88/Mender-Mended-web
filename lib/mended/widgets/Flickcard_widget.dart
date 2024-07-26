
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget getflickCard(Size size) {
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
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff29E1A033),
                      // First color with 20% opacity
                      Color(0xff17443833), // Second color with 20% opacity
                    ],
                    // stops: [0.2, 0.2], // 20% opacity for both colors
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  // color: Color(0xff0EBE7F),
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
                          width: 5,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            'Aria',
                            style: TextStyle(
                                color: Colors.white,
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
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Image.asset(
                          'assets/mender/doctor.jpg',
                          width: size.width,
                          height: size.height * 0.53,
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
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: ' views',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
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
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'view all 13384 comments',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'Add a comment...',
                      style: TextStyle(color: Colors.white, fontSize: 12),
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
                      // padding: EdgeInsets.only(bottom: size.height * 0.03),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xff29E2A0),
                        shape: BoxShape.circle,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 4,
                            spreadRadius: 3.0,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    )

                    // Container(
                    //   // alignment: Alignment.bottomRight,
                    //   padding: EdgeInsets.only(bottom: size.height * 0.03),
                    //   height: 25,
                    //   width: 25,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(100),
                    //     image: const DecorationImage(
                    //       image: AssetImage('assets/mender/plus.png'),
                    //     ),
                    //     boxShadow: const [
                    //       BoxShadow(
                    //         color: Colors.black38,
                    //         blurStyle: BlurStyle.outer,
                    //         blurRadius: 4,
                    //         spreadRadius: 3.0,
                    //       ),
                    //     ],
                    //     color: const Color(0xfff5fcf9),
                    //   ),
                    // ),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
