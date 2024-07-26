import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mended_mender/constants.dart';
import 'package:mended_mender/mended/onboarding/onboarding_screen.dart';
import 'package:mended_mender/mended/widgets/mended_custom_elevated_button.dart';
import 'package:mended_mender/mended/widgets/mended_top_bar.dart';
import '../register/mended_register.dart';
import '../widgets/privacy_terms_widget.dart';
import 'mender_resetPassword.dart';

class MendedEmailVerification extends StatefulWidget {
  const MendedEmailVerification({super.key});

  @override
  State<MendedEmailVerification> createState() =>
      _MendedEmailVerificationState();
}

class _MendedEmailVerificationState extends State<MendedEmailVerification> {
  TextEditingController codeController = TextEditingController();

  void forgotPassword() async {}

  void login() async {}

  void signupGoogle() async {}
  void signupFacebook() async {}
  void signupApple() async {}

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
                                              "Get Your Code",
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
                                            "Please enter 4 digit code sent to your email address.",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          TextField(
                                            controller: codeController,
                                            maxLength: 4,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                                color: Colors
                                                    .white), // Set the text color
                                            decoration: InputDecoration(
                                              hintText: 'Enter Code',
                                              hintStyle: TextStyle(
                                                  color: Colors
                                                      .white), // Set hint text color
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors
                                                        .white), // Set underline color
                                              ),
                                              counterText: '0/4',
                                              counterStyle: TextStyle(
                                                  color: Colors
                                                      .white), // Set counter text color
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "If you don\'t receive code!",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              InkWell(
                                                onTap: () {},
                                                child: const Text(
                                                  " Resend",
                                                  style: TextStyle(
                                                      color: Color(0xff09BE7D),
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child:
                                                    MendedCustomElevatedButton(
                                                  title: 'Verify',
                                                  callback: () {
                                                    moveScreen(context,
                                                        const MendedResetPassword());
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
