import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mended_mender/constants.dart';
import 'package:mended_mender/mended/onboarding/onboarding_screen.dart';
import 'package:mended_mender/mended/signin/mended_signin.dart';
import 'package:mended_mender/mended/widgets/mended_custom_elevated_button.dart';
import 'package:mended_mender/mended/widgets/mended_top_bar.dart';

import '../register/mended_register.dart';
import '../widgets/privacy_terms_widget.dart';
import 'mended_emailVerification.dart';

class MendedResetPassword extends StatefulWidget {
  const MendedResetPassword({super.key});

  @override
  State<MendedResetPassword> createState() => _MendedResetPasswordState();
}

class _MendedResetPasswordState extends State<MendedResetPassword> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  // void forgotPassword() async {}
  // void login() async {}
  //
  // void signupGoogle() async {}
  // void signupFacebook() async {}
  // void signupApple() async {}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print("Width " + size.width.toString());

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
              const MendedTopBar(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/mended/welcome_text.png",
                    width: size.width > 1200 ? 340 : 280,
                    fit: BoxFit.fitWidth,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // SizedBox(width: size.width / 3.5),
                          const Spacer(),
                          Flexible(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.all(15),
                              // height: size.height / 1.8,
                              width: size.width > 1600
                                  ? size.width > 2500
                                      ? size.width / 4
                                      : size.width / 3
                                  : size.width / 2.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
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
                                child: Card(
                                  elevation: 0,
                                  color: Colors.transparent,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            alignment: Alignment.topCenter,
                                            child: const Text(
                                              "Enter New Password",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 35,
                                          ),
                                          const Text(
                                            "Your new password must be different from previously used password.",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text(
                                            "Password",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Card(
                                            color: Colors.white,
                                            elevation: 5,
                                            child: TextFormField(
                                              controller: newPasswordController,
                                              decoration: InputDecoration(
                                                  hintText: "New Password",
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      borderSide:
                                                          BorderSide.none)),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text(
                                            "Confirm Password",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Card(
                                            color: Colors.white,
                                            elevation: 5,
                                            child: TextFormField(
                                              controller:
                                                  confirmPasswordController,
                                              decoration: InputDecoration(
                                                  hintText: "Confirm Password",
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      borderSide:
                                                          BorderSide.none)),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child:
                                                    MendedCustomElevatedButton(
                                                  title: 'Continue',
                                                  callback: () {
                                                    moveScreen(context,
                                                        const MendedSignIn());
                                                  },
                                                  width: double.infinity,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(width: size.width / 3.5),
                          const Spacer(),
                        ],
                      ),
                      Positioned(
                        // top: size.height * 0.10,
                        left: size.width * 0.25,
                        child: Image.asset('assets/mended/mendy.png',
                            fit: BoxFit.cover),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.05),
              SizedBox(
                height: size.height / 10,
                child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: PrivacyAndTermsText()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
