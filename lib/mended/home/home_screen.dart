import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mended_mender/mended/widgets/Flickcard_widget.dart';
import 'package:mended_mender/mended/widgets/custom_gridWidget.dart';
import 'package:mended_mender/mended/widgets/mended_top_bar.dart';
import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mended_mender/mended/widgets/popupScreen_widget.dart';
import 'package:mended_mender/mended/widgets/profile_widget.dart';
import 'package:mended_mender/mended/widgets/setting_widget.dart';
import 'package:mended_mender/mender/colors.dart';
import 'package:mended_mender/mender/widgets/balance_card.dart';
import 'package:mended_mender/mender/widgets/balance_card2.dart';
import 'package:mended_mender/mender/widgets/top_bar.dart';
import '../../constants.dart';
import '../../mender/widgets/next_session_widget.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../widgets/next_session_widget.dart';
import '../widgets/support_groupCard.dart';

import 'package:mended_mender/mended/widgets/mended_custom_elevated_button.dart';

class MendedHomeScreen extends StatefulWidget {
  const MendedHomeScreen({super.key});
  @override
  State<MendedHomeScreen> createState() => _MendedHomeScreenState();
}

class _MendedHomeScreenState extends State<MendedHomeScreen> {
  GlobalKey key = GlobalKey();
  int selectedButton = 0;
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

  List supportGroupList = [
    SupportGroupCard(
      title: 'Anxiety',
      labelText1: 'Private',
      labelText2: ' Group',
      backgroundImageName: 'assets/mended/supportGroupwave.png',
    ),
    SupportGroupCard(
      title: 'Single Dad',
      labelText1: 'Private',
      labelText2: ' Group',
      backgroundImageName: 'assets/mended/supportGroupwave.png',
    ),
    SupportGroupCard(
      title: 'John Hopkins',
      labelText1: 'Private',
      labelText2: ' Group',
      backgroundImageName: 'assets/mended/supportGroupwave.png',
    ),
    SupportGroupCard(
      title: 'Sad Day',
      labelText1: 'Private',
      labelText2: ' Group',
      backgroundImageName: 'assets/mended/supportGroupwave.png',
    ),
    SupportGroupCard(
      title: 'Anxiety',
      labelText1: 'Private',
      labelText2: ' Group',
      backgroundImageName: 'assets/mended/supportGroupwave.png',
    ),
  ];
  void selectButton(int index) {
    setState(() {
      selectedButton = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/mended/home_background.png"))),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  MendedTopBar(
                    row: [
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: getButton("assets/mended/memeland_image.png",
                            "Memeland", selectedIndex == 0),
                      ),
                      Container(
                        width: 80,
                        height: 5,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                // fit: BoxFit.cover,
                                image: AssetImage("assets/mended/line.png"))),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                        child: getButton("assets/mended/flicks_image.png",
                            "Flicks", selectedIndex == 1),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      SizedBox(
                        width: 40,
                      ),

                      // for the setting 
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                        child: Text('Settings',style: TextStyle(color: Colors.white,fontSize: 16,),)
                      ),
                        SizedBox(
                        width: 10,
                      ),

                      InkWell(
                        onTap: (){
                           showDialog(
                          context: context,
                            builder: (BuildContext context) {
                                                             

                             return CustomPopupScreenNotification();
                                                               
                                                               
                                          },
                                   );
     
                        },
                        child: CircleAvatar(
                          radius: 18,
                          backgroundColor: Colors.white.withOpacity(0.2),
                          child: Icon(Icons.notifications,color: Colors.amber,),
                        ),
                      )
                    ],
                  ),
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
                              InkWell(
                                onTap: () {
                                  
                                  setState(() {
                                     selectedIndex = 3;
                                     });
                        

                                  
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 15.0,
                                        backgroundImage: AssetImage(
                                            'assets/mender/images1.jpg'),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 3),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Magicwhirl Star',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            RichText(
                                              text: TextSpan(
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: '133',
                                                    style: TextStyle(
                                                      color: Colors.white60,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'Tokens',
                                                    style: TextStyle(
                                                      color: Colors.white60,
                                                      fontSize: 12,
                                                      // Add additional styling for the "Tokens" part here
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
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              // GestureDetector(
                              //     onTap: () {
                              //       setState(() {
                              //         selectedIndex = 4;
                              //       });
                              //     },
                              //     child: getMenuButton(Icons.home_filled,
                              //         "Home", selectedIndex == 4)),
                              // const SizedBox(
                              //   height: 5,
                              // ),
                              Container(
                                width: 120,
                                height: 10,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/mended/line.png"))),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = 4;
                                    });
                                  },
                                  child: getMenuButton(Icons.group,
                                      "Support\ngroups", selectedIndex == 3)),
                              SizedBox(
                                height: size.height * 0.38,
                              ),
                              //we are use the Button here
                              InkWell(
                                onTap: (){
                                  // show here a popup widgst
                                   showDialog(
                                             context: context,
                                                    builder: (BuildContext context) {
                                                               return CustomPopup();
                                                                         },
                                                         );

                              

                                },
                                child: Container(
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
                                NextSessionCardMended(
                                  title: 'Your next session',
                                 
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Flexible(
                                  child: Container(
                                    height: size.height * 0.5,
                                    padding: const EdgeInsets.all(15),
                                    // width: size.width * 0.21,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Color(0xff174438),
                                      border: Border.all(color: Colors.white12),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                  color: Colors.white70,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              width: 150,
                                            ),
                                            Icon(
                                              Icons.search,
                                              color: Colors.white70,
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Privacy - Terms & Cond. Mended ',
                                      style: TextStyle(
                                          color: Colors.white30, fontSize: 13),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.copyright,
                                      size: 15,
                                      color: Colors.white30,
                                    ),
                                    Text(
                                      '2023 ',
                                      style: TextStyle(
                                          color: Colors.white30, fontSize: 13),
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
            )));
  }

  Widget getMainWidget(size) {
    if (selectedIndex == 0) {
      return getMemelandWidget(size);
    }
    if (selectedIndex == 1) {
      return getFlicksWidget(size);
    }
    if (selectedIndex == 2) {
      return getSettingWidget(size);
    }
    if (selectedIndex == 3) {
      return getprofileWidget(size);
    }
    if (selectedIndex == 4) {
      return getSupportGroupsWidget(size);
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

  Widget getButton(String imagePath, String title, bool isSelected) {
    Color color = Colors.grey;
    if (isSelected) {
      color = Colors.white;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Image.asset(
            imagePath,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(
                color: color, fontSize: 18, fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }

  Widget getMenuButton(IconData icon, String title, bool isSelected) {
    Color color = Colors.white70;
    if (isSelected) {
      color = Colors.white;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 28,
            color: color,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(color: color, fontSize: 14),
          )
        ],
      ),
    );
  }
  


  
  
  
  
  // for the support group

  Widget getSupportGroupsWidget(size) {
    return SizedBox(
      height: size.height,
      width: size.width / 2.24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: size.height * 0.06,
              width: size.width * 0.25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/mended/SupportGroups.png"),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 2.5, // Adjust the spacing between items as needed
                children: supportGroupList.map((item) {
                  return SupportGroupCard(
                    title: item.title,
                    labelText1: item.labelText1,
                    labelText2: item.labelText2,
                    backgroundImageName: item.backgroundImageName,
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.2,
          )
        ],
      ),
    );
  }

  // FOR THE POPUP SCREEN ON THE MENDER ICON
  
 
  





  // Widget getSupportGroupsWidget(size) {
  //   return SizedBox(
  //       height: size.height,
  //       width: size.width / 2.24,
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Center(
  //             child: Container(
  //               height: size.height * 0.06,
  //               width: size.width * 0.25,
  //               decoration: const BoxDecoration(
  //                   image: DecorationImage(
  //                       image: AssetImage("assets/mended/SupportGroups.png"))),
  //             ),
  //           ),
  //           const SizedBox(
  //             height: 12,
  //           ),
  //           Flexible(
  //             child: ListView.builder(
  //                 itemCount: supportGroupList.length,
  //                 itemBuilder: (context, index) {
  //                   return Row(
  //                     mainAxisAlignment: MainAxisAlignment.start,
  //                     // direction: Axis.vertical,
  //                     children: [
  //                       supportGroupList[index],
  //                       const SizedBox(
  //                         height: 2,
  //                       )
  //                     ],
  //                   );
  //                 }),
  //           )
  //         ],
  //       ));
  // }

  // SupportGroupCard(
  //   title: 'Anxiety',
  //   labelText1: 'Private',
  //   labelText2: ' Group',
  //   backgroundImageName: 'assets/mended/supportGroupwave.png',
  // ),
  // SizedBox(
  //   height: size.height * 0.37,
  //   width: size.width * 0.22,
  //   child: Stack(
  //     children: [
  //       Container(
  //         color: Colors.transparent,
  //         padding: EdgeInsets.all(30),
  //         child: Container(
  //           padding: EdgeInsets.all(5).copyWith(top: 24),
  //           decoration: BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.circular(10),
  //           ),
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               SizedBox(
  //                 height: size.height * 0.01,
  //               ),
  //               Text(
  //                 'Anxiety',
  //                 style: TextStyle(
  //                   color: Colors.black,
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 14,
  //                 ),
  //               ),
  //               ListTile(
  //                   leading: Icon(
  //                     Icons.lock,
  //                     size: 20,
  //                     color: Colors.black45,
  //                   ),
  //                   title: RichText(
  //                     text: TextSpan(
  //                       children: [
  //                         TextSpan(
  //                           text: 'Private',
  //                           style: TextStyle(
  //                               color: Colors.black45, fontSize: 12),
  //                         ),
  //                         TextSpan(
  //                           text: ' Group',
  //                           style: TextStyle(
  //                             color: Colors
  //                                 .black45, // Customize the color for "Group"
  //                             fontSize: 12,
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   )),
  //               ListTile(
  //                   leading: Icon(
  //                     Icons.group,
  //                     size: 20,
  //                     color: Colors.black45,
  //                   ),
  //                   title: RichText(
  //                     text: TextSpan(
  //                       children: [
  //                         TextSpan(
  //                           text: '20',
  //                           style: TextStyle(
  //                               color: Colors.black45, fontSize: 12),
  //                         ),
  //                         TextSpan(
  //                           text: ' Members',
  //                           style: TextStyle(
  //                             color: Colors
  //                                 .black45, // Customize the color for "Group"
  //                             fontSize: 12,
  //                           ),
  //                         ),
  //                       ],
  //                     ),
  //                   )),
  //               InkWell(
  //                 onTap: () {},
  //                 child: Container(
  //                   height: 30,
  //                   width: 150,
  //                   decoration: const BoxDecoration(
  //                       image: DecorationImage(
  //                           image: AssetImage(
  //                               "assets/mended/joinGroup.png"))),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ),
  //       Positioned(
  //         top: -10,
  //         left: size.width * 0.07,
  //         child: Image.asset('assets/mended/supportGroupwave.png'),
  //       ),
  //     ],
  //   ),
  // ),

  // for the memelandWidgts to 
  Widget getMemelandWidget(size) {
    return SizedBox(
        height: size.height,
        width: size.width / 2.6,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: 'Friends',
                  isSelected: selectedButton == 0,
                  onPressed: () {
                    selectButton(0);
                  },
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  width: 0.5, // Adjust the width as needed
                  height: 20.0, // Adjust the height as needed
                  color: Colors.white,
                ),
                CustomButton(
                  text: 'Popular',
                  isSelected: selectedButton == 1,
                  onPressed: () {
                    selectButton(1);
                  },
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(scrollDirection: Axis.vertical,    child: getMemeWidget(size)),
            ),
          ],
        ));
  }

  // Widget getGrid(Size size) {
  //   // Replace these with your dummy image URLs
  //   List<String> imageUrls = [
  //     'assets/mender/images1.jpg',
  //     'assets/mender/images2.jpeg',
  //     'assets/mender/images3.jpeg',
  //     'assets/mender/images4.jpeg',
  //     'assets/mender/images1.jpg',
  //     'assets/mender/images2.jpeg',
  //     'assets/mender/images3.jpeg',
  //     'assets/mender/images4.jpeg',
  //     'assets/mender/images1.jpg',
  //     'assets/mender/images2.jpeg',
  //     'assets/mender/images3.jpeg',
  //     'assets/mender/images4.jpeg',
  //     'assets/mender/images1.jpg',
  //     'assets/mender/images2.jpeg',
  //     'assets/mender/images3.jpeg',
  //     'assets/mender/images4.jpeg',
  //     'assets/mender/images1.jpg',
  //     'assets/mender/images2.jpeg',
  //     'assets/mender/images3.jpeg',
  //     'assets/mender/images4.jpeg',
  //     // Add more dummy URLs as needed
  //   ];
  //
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: GridView.builder(
  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 4, // 4 images in a row
  //       ),
  //       itemCount: 5 * 4, // 12 rows with 4 images each
  //       itemBuilder: (context, index) {
  //         // Calculate the image index based on the row and column
  //         final imageIndex = index % imageUrls.length;
  //
  //         return Stack(
  //           children: [
  //             Container(
  //               padding: const EdgeInsets.all(10),
  //               decoration: BoxDecoration(
  //                 boxShadow: const [
  //                   BoxShadow(
  //                     color: Colors.black12,
  //                     blurRadius: 3,
  //                     spreadRadius: 1.0,
  //                   ),
  //                 ],
  //                 color: Colors.white,
  //                 borderRadius: BorderRadius.circular(10),
  //               ),
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   // Place your image here using CachedNetworkImage or Image.network
  //                   Image.asset(
  //                     imageUrls[imageIndex],
  //                     width: size.width,
  //                     height: size.height * 0.53,
  //                     fit: BoxFit.cover,
  //                   ),
  //                   // Other widgets and text can be added as per your requirements
  //                 ],
  //               ),
  //             ),
  //             Positioned(
  //               bottom: 0,
  //               right: 0,
  //               child: InkWell(
  //                 onTap: () {},
  //                 child: Container(
  //                   height: 30,
  //                   width: 30,
  //                   decoration: BoxDecoration(
  //                     color: Color(0xff29E2A0),
  //                     shape: BoxShape.circle,
  //                     boxShadow: const [
  //                       BoxShadow(
  //                         color: Colors.black38,
  //                         blurRadius: 4,
  //                         spreadRadius: 3.0,
  //                       ),
  //                     ],
  //                   ),
  //                   child: Center(
  //                     child: Icon(
  //                       Icons.add,
  //                       color: Colors.white,
  //                       size: 18,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         );
  //       },
  //     ),
  //   );
  // }

 

  Widget getFlicksWidget(size) {
    return SizedBox(
        height: size.height,
        width: size.width / 2.6,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: 'Friends',
                  isSelected: selectedButton == 2,
                  onPressed: () {
                    selectButton(2);
                  },
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  width: 0.5, // Adjust the width as needed
                  height: 20.0, // Adjust the height as needed
                  color: Colors.white,
                ),
                CustomButton(
                  text: 'Popular',
                  isSelected: selectedButton == 3,
                  onPressed: () {
                    selectButton(3);
                  },
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const CustomButton(text: 'Friends'),
            //     Container(
            //       margin: const EdgeInsets.symmetric(horizontal: 25),
            //       width: 0.5, // Adjust the width as needed
            //       height: 20.0, // Adjust the height as needed
            //       color: Colors.black,
            //     ),
            //     const CustomButton(text: 'Popular'),
            //   ],
            // ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return getflickCard(size);
                  }),
            ),
          ],
        ));
  }

  
}

 Widget getprofileWidget(size) {
    return SizedBox(
        height: size.height,
        width: size.width / 2.6,
        child: Column(
          children: [
          
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const CustomButton(text: 'Friends'),
            //     Container(
            //       margin: const EdgeInsets.symmetric(horizontal: 25),
            //       width: 0.5, // Adjust the width as needed
            //       height: 20.0, // Adjust the height as needed
            //       color: Colors.black,
            //     ),
            //     const CustomButton(text: 'Popular'),
            //   ],
            // ),
            Expanded(
              child: ProfileScreen(),
            ),
          ],
        ));
  }

// for the Setting screen 

 Widget getSettingWidget(size) {
    return SizedBox(
        height: size.height,
        width: size.width / 2.6,
        child: Column(
          children: [
          
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const CustomButton(text: 'Friends'),
            //     Container(
            //       margin: const EdgeInsets.symmetric(horizontal: 25),
            //       width: 0.5, // Adjust the width as needed
            //       height: 20.0, // Adjust the height as needed
            //       color: Colors.black,
            //     ),
            //     const CustomButton(text: 'Popular'),
            //   ],
            // ),
            Expanded(
              child: SettingScreen(),
            ),
          ],
        ));
  }
// class MendedHomeScreen extends StatefulWidget {
//   const MendedHomeScreen({super.key});
//
//   @override
//   State<MendedHomeScreen> createState() => _MendedHomeScreenState();
// }
//
// class _MendedHomeScreenState extends State<MendedHomeScreen> {
//   int selectedButton = 0;
//   int selectedIndex = 0;
//   List usersList = [
//     const UserContainer(
//       imageUrl: 'assets/mender/images3.jpeg',
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
//
//   void selectButton(int index) {
//     setState(() {
//       selectedButton = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     print(size.width);
//
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxWidth > 900) {
//           return Container(
//             decoration: const BoxDecoration(
//                 image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage("assets/mended/home_background.png"))),
//             child: Scaffold(
//               backgroundColor: Colors.transparent,
//               body: SingleChildScrollView(
//                 physics: NeverScrollableScrollPhysics(),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         MendedTopBar(
//                           row: [
//                             Spacer(),
//                             GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   selectedIndex = 0;
//                                 });
//                               },
//                               child: getButton(
//                                   "assets/mended/memeland_image.png",
//                                   "Memeland",
//                                   selectedIndex == 0),
//                             ),
//                             SizedBox(
//                               width: 50,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   selectedIndex = 0;
//                                 });
//                               },
//                               child: getButton("assets/mended/flicks_image.png",
//                                   "Memeland", selectedIndex == 0),
//                             ),
//                             // Text(
//                             //   'Memeland',
//                             // ),
//                             // Image.asset("assets/mended/memeland_image.png"),
//                             // SizedBox(
//                             //   width: 50,
//                             // ),
//                             // Text(
//                             //   'Flicks',
//                             // ),
//                             // Image.asset("assets/mended/flicks_image.png"),
//                             Spacer(
//                               flex: 1,
//                             ),
//                             SizedBox(
//                               width: 50,
//                             ),
//                             CircleAvatar(
//                               radius: 18,
//                               backgroundColor: Colors.white.withOpacity(0.2),
//                               child: Icon(Icons.notifications),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: size.height * 0.04,
//                     ),
//                     SizedBox(
//                       width: size.width / 1.1,
//                       child: Center(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           // crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text(
//                                   'Your balance',
//                                   style: TextStyle(color: Colors.black45),
//                                 ),
//                                 const SizedBox(
//                                   height: 5,
//                                 ),
//                                 Visibility(
//                                   visible:
//                                       [0, 1, 3, 4, 5].contains(selectedIndex),
//                                   child: BalanceCard(
//                                     title: 'Total Balance',
//                                     totalBalance: '\$224.57',
//                                     onButtonPressed: null,
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: selectedIndex == 2,
//                                   child: BalanceCard2(
//                                     title: 'Total Balance',
//                                     totalBalance: '\$224.57',
//                                     lastPayment: '\$50',
//                                     lastWithdraw: '\$150',
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 Visibility(
//                                   visible:
//                                       [0, 1, 3, 4, 5].contains(selectedIndex),
//                                   child: InkWell(
//                                     onTap: () {
//                                       setState(() {
//                                         selectedIndex = 2;
//                                       });
//                                     },
//                                     child: const Text(
//                                       'Go to my wallet',
//                                       style: TextStyle(
//                                         fontSize: 13.0,
//                                         color: Color(0xff09be7d), // Text color
//                                         decoration: TextDecoration
//                                             .underline, // Add underline
//                                         decorationStyle: TextDecorationStyle
//                                             .solid, // Solid underline style
//                                         decorationColor: Color(0xff09be7d),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible:
//                                       [0, 1, 3, 4, 5].contains(selectedIndex),
//                                   child: SizedBox(
//                                     height: size.height * 0.38,
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: selectedIndex == 2,
//                                   child: SizedBox(
//                                     height: size.height * 0.29,
//                                   ),
//                                 ),
//                                 Container(
//                                   padding: EdgeInsets.only(
//                                       bottom: size.height * 0.03),
//                                   height: 60,
//                                   width: 60,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(100),
//                                     image: const DecorationImage(
//                                       image:
//                                           AssetImage('assets/mender/logo.png'),
//                                     ),
//                                     boxShadow: const [
//                                       BoxShadow(
//                                         color: Colors.black38,
//                                         blurStyle: BlurStyle.outer,
//                                         blurRadius: 4,
//                                         spreadRadius: 3.0,
//                                       ),
//                                     ],
//                                     color: const Color(0xfff5fcf9),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: size.height * 0.03,
//                                 ),
//                               ],
//                             ),
//                             getMainWidget(size),
//                             SizedBox(
//                               height: size.height,
//                               width: 270,
//                               child: Column(
//                                 children: [
//                                   //first card
//                                   NextSessionCard(
//                                     title: 'Your next session',
//                                     date: '07 September 2023',
//                                     buddyName: 'Alejandra Vega',
//                                     time: '12:00 - 16:00',
//                                   ),
//                                   const SizedBox(
//                                     height: 10,
//                                   ),
//                                   Flexible(
//                                     child: Container(
//                                       height: size.height * 0.5,
//                                       padding: const EdgeInsets.all(15),
//                                       // width: size.width * 0.21,
//                                       decoration: BoxDecoration(
//                                         borderRadius:
//                                             BorderRadius.circular(10.0),
//                                         color: Colors.white,
//                                         border:
//                                             Border.all(color: Colors.black12),
//                                       ),
//                                       child: Column(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.start,
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           const Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.start,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: [
//                                               Text(
//                                                 'Buddies',
//                                                 style: TextStyle(
//                                                     color: Colors.black54,
//                                                     fontSize: 15),
//                                               ),
//                                               SizedBox(
//                                                 width: 150,
//                                               ),
//                                               Icon(
//                                                 Icons.search,
//                                                 color: Colors.black38,
//                                                 size: 22,
//                                               )
//                                             ],
//                                           ),
//                                           const SizedBox(
//                                             height: 12,
//                                           ),
//                                           Flexible(
//                                             child: ListView.builder(
//                                                 itemCount: usersList.length,
//                                                 itemBuilder: (context, index) {
//                                                   return Column(
//                                                     children: [
//                                                       usersList[index],
//                                                       const SizedBox(
//                                                         height: 10,
//                                                       )
//                                                     ],
//                                                   );
//                                                 }),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: size.height * 0.08,
//                                   ),
//                                   const Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         'Privacy - Terms & Cond. Mender ',
//                                         style: TextStyle(
//                                             color: Colors.black38,
//                                             fontSize: 13),
//                                       ),
//                                       SizedBox(
//                                         width: 4,
//                                       ),
//                                       Icon(
//                                         Icons.copyright,
//                                         size: 15,
//                                         color: Colors.black26,
//                                       ),
//                                       Text(
//                                         '2023 ',
//                                         style: TextStyle(
//                                             color: Colors.black26,
//                                             fontSize: 13),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: size.height * 0.02,
//                                   ),
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           );
//         } else {
//           // Otherwise, display the mobile layout
//           return Center(
//             child: Text("Mobile App"),
//           );
//         }
//       },
//     );
//   }
//
//   // Widget getButton(String imagePath, String title, bool isSelected) {
//   //   Color color = Colors.grey;
//   //   if (isSelected) {
//   //     color = MenderColors.primaryColor;
//   //   }
//   //   return Padding(
//   //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//   //     child: Row(
//   //       children: [
//   //
//   //         const SizedBox(
//   //           width: 5,
//   //         ),
//   //         Text(
//   //           title,
//   //           style: TextStyle(color: color, fontSize: 18),
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }
//
//   Widget getButton(String imagePath, String title, bool isSelected) {
//     Color color = Colors.grey;
//     if (isSelected) {
//       color = MenderColors.primaryColor;
//     }
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Row(
//         children: [
//           Image.asset(
//             imagePath,
//             width: 20,
//             height: 20,
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
//   Widget getMemelandWidget(size) {
//     return SizedBox(
//         height: size.height,
//         width: size.width / 2.6,
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomButton(
//                   text: 'Friends',
//                   isSelected: selectedButton == 0,
//                   onPressed: () {
//                     selectButton(0);
//                   },
//                 ),
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 25),
//                   width: 0.5, // Adjust the width as needed
//                   height: 20.0, // Adjust the height as needed
//                   color: Colors.black,
//                 ),
//                 CustomButton(
//                   text: 'Popular',
//                   isSelected: selectedButton == 1,
//                   onPressed: () {
//                     selectButton(1);
//                   },
//                 ),
//               ],
//             ),
//             Expanded(
//               child: ListView.builder(
//                   shrinkWrap: true,
//                   itemBuilder: (context, index) {
//                     return getGrid(size);
//                   }),
//             ),
//           ],
//         ));
//   }
//
//   Widget getGrid(
//     Size size,
//   ) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Stack(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurStyle: BlurStyle.outer,
//                       blurRadius: 3,
//                       spreadRadius: 1.0,
//                     ),
//                   ],
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const CircleAvatar(
//                           radius: 15.0,
//                           backgroundImage:
//                               AssetImage('assets/mender/images4.jpeg'),
//                         ),
//                         const SizedBox(
//                           width: 5,
//                         ),
//                         const Padding(
//                           padding: EdgeInsets.only(top: 5),
//                           child: Text(
//                             'Aria',
//                             style: TextStyle(
//                                 color: Colors.black38,
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.w900),
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 3,
//                         ),
//                         const Padding(
//                           padding: EdgeInsets.only(top: 5),
//                           child: Image(
//                             height: 20,
//                             width: 20,
//                             image: AssetImage('assets/mender/stars.png'),
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 6,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 5),
//                           child: InkWell(
//                             onTap: () {},
//                             child: const FaIcon(
//                               FontAwesomeIcons.userPlus,
//                               color: Color(0xff82e5c1),
//                               size: 15,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 5),
//                         child: Image.asset(
//                           'assets/mender/doctor.jpg',
//                           width: size.width,
//                           height: size.height * 0.53,
//                         )),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             InkWell(
//                                 onTap: () {},
//                                 child: const FaIcon(
//                                   FontAwesomeIcons.heart,
//                                   size: 22.0,
//                                   color: Color(0xff2dbfb4),
//                                 )),
//                             const SizedBox(
//                               width: 15,
//                             ),
//                             InkWell(
//                                 onTap: () {},
//                                 child: const FaIcon(
//                                   FontAwesomeIcons.message,
//                                   size: 19.0,
//                                   color: Color(0xff2dbfb4),
//                                 )),
//                           ],
//                         ),
//                         InkWell(
//                           onTap: () {},
//                           child: const FaIcon(
//                             FontAwesomeIcons.shareFromSquare,
//                             size: 20.0,
//                             color: Color(0xff2dbfb4),
//                           ),
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                         children: [
//                           TextSpan(
//                             text: '741,368',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           TextSpan(
//                             text: ' views',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.black54,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     const Text(
//                       '#beautifulday #soundcheck #stressrelie',
//                       style: TextStyle(color: Colors.black54, fontSize: 12),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     const Text(
//                       'view all 13384 comments',
//                       style: TextStyle(color: Colors.black26, fontSize: 10),
//                     ),
//                     const SizedBox(
//                       height: 7,
//                     ),
//                     const Text(
//                       'Add a comment...',
//                       style: TextStyle(color: Colors.black38, fontSize: 12),
//                     ),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 bottom: size.height * 0.0,
//                 right: 0,
//                 child: InkWell(
//                   onTap: () {},
//                   child: Container(
//                     // alignment: Alignment.bottomRight,
//                     padding: EdgeInsets.only(bottom: size.height * 0.03),
//                     height: 25,
//                     width: 25,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(100),
//                       image: const DecorationImage(
//                         image: AssetImage('assets/mender/plus.png'),
//                       ),
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Colors.black38,
//                           blurStyle: BlurStyle.outer,
//                           blurRadius: 4,
//                           spreadRadius: 3.0,
//                         ),
//                       ],
//                       color: const Color(0xfff5fcf9),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget getFlicksWidget(size) {
//     return SizedBox(
//         height: size.height,
//         width: size.width / 2.6,
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CustomButton(
//                   text: 'Friends',
//                   isSelected: selectedButton == 0,
//                   onPressed: () {
//                     selectButton(0);
//                   },
//                 ),
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 25),
//                   width: 0.5, // Adjust the width as needed
//                   height: 20.0, // Adjust the height as needed
//                   color: Colors.black,
//                 ),
//                 CustomButton(
//                   text: 'Popular',
//                   isSelected: selectedButton == 1,
//                   onPressed: () {
//                     selectButton(1);
//                   },
//                 ),
//               ],
//             ),
//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.center,
//             //   children: [
//             //     const CustomButton(text: 'Friends'),
//             //     Container(
//             //       margin: const EdgeInsets.symmetric(horizontal: 25),
//             //       width: 0.5, // Adjust the width as needed
//             //       height: 20.0, // Adjust the height as needed
//             //       color: Colors.black,
//             //     ),
//             //     const CustomButton(text: 'Popular'),
//             //   ],
//             // ),
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
//   Widget getCard(
//     Size size,
//   ) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Stack(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   boxShadow: const [
//                     BoxShadow(
//                       color: Colors.black12,
//                       blurStyle: BlurStyle.outer,
//                       blurRadius: 3,
//                       spreadRadius: 1.0,
//                     ),
//                   ],
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const CircleAvatar(
//                           radius: 15.0,
//                           backgroundImage:
//                               AssetImage('assets/mender/images4.jpeg'),
//                         ),
//                         const SizedBox(
//                           width: 5,
//                         ),
//                         const Padding(
//                           padding: EdgeInsets.only(top: 5),
//                           child: Text(
//                             'Aria',
//                             style: TextStyle(
//                                 color: Colors.black38,
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.w900),
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 3,
//                         ),
//                         const Padding(
//                           padding: EdgeInsets.only(top: 5),
//                           child: Image(
//                             height: 20,
//                             width: 20,
//                             image: AssetImage('assets/mender/stars.png'),
//                           ),
//                         ),
//                         const SizedBox(
//                           width: 6,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 5),
//                           child: InkWell(
//                             onTap: () {},
//                             child: const FaIcon(
//                               FontAwesomeIcons.userPlus,
//                               color: Color(0xff82e5c1),
//                               size: 15,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Padding(
//                         padding: const EdgeInsets.symmetric(vertical: 5),
//                         child: Image.asset(
//                           'assets/mender/doctor.jpg',
//                           width: size.width,
//                           height: size.height * 0.53,
//                         )),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             InkWell(
//                                 onTap: () {},
//                                 child: const FaIcon(
//                                   FontAwesomeIcons.heart,
//                                   size: 22.0,
//                                   color: Color(0xff2dbfb4),
//                                 )),
//                             const SizedBox(
//                               width: 15,
//                             ),
//                             InkWell(
//                                 onTap: () {},
//                                 child: const FaIcon(
//                                   FontAwesomeIcons.message,
//                                   size: 19.0,
//                                   color: Color(0xff2dbfb4),
//                                 )),
//                           ],
//                         ),
//                         InkWell(
//                           onTap: () {},
//                           child: const FaIcon(
//                             FontAwesomeIcons.shareFromSquare,
//                             size: 20.0,
//                             color: Color(0xff2dbfb4),
//                           ),
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     RichText(
//                       text: const TextSpan(
//                         children: [
//                           TextSpan(
//                             text: '741,368',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.black54,
//                             ),
//                           ),
//                           TextSpan(
//                             text: ' views',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.black54,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     const Text(
//                       '#beautifulday #soundcheck #stressrelie',
//                       style: TextStyle(color: Colors.black54, fontSize: 12),
//                     ),
//                     const SizedBox(
//                       height: 5,
//                     ),
//                     const Text(
//                       'view all 13384 comments',
//                       style: TextStyle(color: Colors.black26, fontSize: 10),
//                     ),
//                     const SizedBox(
//                       height: 7,
//                     ),
//                     const Text(
//                       'Add a comment...',
//                       style: TextStyle(color: Colors.black38, fontSize: 12),
//                     ),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 bottom: size.height * 0.0,
//                 right: 0,
//                 child: InkWell(
//                   onTap: () {},
//                   child: Container(
//                     // alignment: Alignment.bottomRight,
//                     padding: EdgeInsets.only(bottom: size.height * 0.03),
//                     height: 25,
//                     width: 25,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(100),
//                       image: const DecorationImage(
//                         image: AssetImage('assets/mender/plus.png'),
//                       ),
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Colors.black38,
//                           blurStyle: BlurStyle.outer,
//                           blurRadius: 4,
//                           spreadRadius: 3.0,
//                         ),
//                       ],
//                       color: const Color(0xfff5fcf9),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget getMainWidget(size) {
//     if (selectedIndex == 0) {
//       return getMemelandWidget(size);
//     }
//     if (selectedIndex == 1) {
//       return getFlicksWidget(size);
//     }
//     return SizedBox(
//         height: size.height,
//         width: size.width / 2.2,
//         child: Center(
//           child: Container(
//             child: Text('Empty'),
//           ),
//         ));
//   }
// }

// for the profile Widget










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

class CustomButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.white.withOpacity(0.3),
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          fontSize: 15,
        ),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const CustomButton2({
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: isSelected
              ? Color(0xff0A8357)
              : Color(0xff0A8357).withOpacity(0.5),
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
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
        color: Color(0xff174438),
        border: Border.all(color: Colors.white12),
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
                color: Colors.white70,
                fontSize: 12,
              ),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                // shape: BoxShape.circle,
                color: Colors.white12,
              ),
              child: const Text(
                'Message',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
            ),
          ),
          // Row(
          //   children: [
          //
          //     SizedBox(
          //       width: 5,
          //     ),
          //     InkWell(
          //       onTap: () {},
          //       child: Container(
          //         padding: const EdgeInsets.all(5),
          //         decoration: const BoxDecoration(
          //           shape: BoxShape.circle,
          //           color: Color(0xffe6f7f1),
          //         ),
          //         child: const Icon(
          //           Icons.call,
          //           size: 18,
          //           color: Color(0xff0fbf80),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
      

        ],
      ),
    );
  }
}

