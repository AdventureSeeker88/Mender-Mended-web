import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../mender/widgets/onboarding_topbar.dart';
import '../home/home_screen.dart';
import '../widgets/mended_custom_elevated_button.dart';

class MendedOnboarding extends StatefulWidget {
  const MendedOnboarding({super.key});
  @override
  State<MendedOnboarding> createState() => _MendedOnboardingState();
}

class _MendedOnboardingState extends State<MendedOnboarding> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print("Width " + size.width.toString());

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          // If the width is greater than 900, display the web layout
          // return const MenderHomeScreen();
          return Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/mended/background.png"))),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const OnboardingTopBar(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset(
                        //   "assets/mended/welcome_text.png",
                        //   width: size.width > 1200 ? 340 : 280,
                        //   fit: BoxFit.fitWidth,
                        // ),
                        SizedBox(
                          height: size.height * 0.08,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(width: size.width / 3.5),
                            const Spacer(),
                            Flexible(
                              flex: 2,
                              child: Container(
                                padding:
                                    EdgeInsets.all(15).copyWith(bottom: 25),
                                // height: size.height / 1.8,
                                width: size.width > 1600
                                    ? size.width > 2500
                                        ? size.width / 4
                                        : size.width / 3
                                    : size.width / 2.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: const LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 40, 120, 106),
                                      Color.fromARGB(255, 0, 52, 35),
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image(
                                        width: size.width,
                                        height: size.height * 0.42,
                                        image: AssetImage(
                                            "assets/mended/onboarding.png"),
                                      ),
                                      Text(
                                        " Find Menders ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: size.height * 0.03),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 60),
                                        child: Text(
                                          "This app will help you to find the help that you need. You can look for a mender in the list and have a video session.",
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            // SizedBox(width: size.width / 3.5),
                            const Spacer(),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Flexible(
                              child: MendedCustomElevatedButton(
                                title: 'Next',
                                callback: () {
                                  moveScreen(context, const MendedHomeScreen());
                                },
                                width: 130,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        } else {
          // Otherwise, display the mobile layout
          return const Center(
            child: Text("Mobile App"),
          );
        }
      },
    );
  }
}
