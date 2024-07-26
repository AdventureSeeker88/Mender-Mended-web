import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mended_mender/constants.dart';
import 'package:mended_mender/mended/forgetPassword/mended_forgetPassword.dart';
import 'package:mended_mender/mended/onboarding/onboarding_screen.dart';
import 'package:mended_mender/mended/widgets/mended_custom_elevated_button.dart';
import 'package:mended_mender/mended/widgets/mended_top_bar.dart';

import '../register/mended_register.dart';
import '../widgets/privacy_terms_widget.dart';

class MendedSignIn extends StatefulWidget {
  const MendedSignIn({super.key});

  @override
  State<MendedSignIn> createState() => _MendedSignInState();
}

class _MendedSignInState extends State<MendedSignIn> {
  //you can put these values where ever you want
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                                          // const Text(
                                          //   " Email",
                                          //   style: TextStyle(
                                          //       color: Colors.black54,
                                          //       fontSize: 15,
                                          //       fontWeight: FontWeight.bold),
                                          // ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Spacer(),
                                              Expanded(
                                                flex: 2,
                                                child: SizedBox(
                                                  // width: size.width / 4,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TextFormField(
                                                        controller:
                                                            emailController,
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white70),
                                                        decoration:
                                                            InputDecoration(
                                                          hintText: "Email",
                                                          hintStyle:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .white38),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .white), // Border color
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .white), // Border color when focused
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      TextFormField(
                                                        obscureText: true,
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white70),
                                                        controller:
                                                            passwordController,
                                                        decoration:
                                                            InputDecoration(
                                                          hintStyle:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .white38),
                                                          hintText: "Password",
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .white), // Border color
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .white), // Border color when focused
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          TextButton(
                                                              onPressed: () {
                                                                moveScreen(
                                                                  context,
                                                                  const MendedForgotPassword(),
                                                                );
                                                              },
                                                              child: const Text(
                                                                "Forget Password?",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white70),
                                                              ))
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 15,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Flexible(
                                                            child:
                                                                MendedCustomElevatedButton(
                                                              title: 'Login',
                                                              callback: () {
                                                                moveScreen(
                                                                    context,
                                                                    const MendedOnboarding());
                                                              },
                                                              width:
                                                                  size.width /
                                                                      5,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 15,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const Spacer(),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Spacer(),
                                              Expanded(
                                                child: SizedBox(
                                                  // width: size.width / 4,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            child: Divider(
                                                              color:
                                                                  Colors.white,
                                                              height: 2,
                                                            ),
                                                          ),
                                                          Text(
                                                            "  Or Sign up with  ",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                          Expanded(
                                                            child: Divider(
                                                              color:
                                                                  Colors.white,
                                                              height: 2,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 15,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          // Expanded(
                                                          //   child:
                                                          //       FlutterSocialButton(
                                                          //     onTap: () {},
                                                          //     buttonType: ButtonType
                                                          //         .google, // Button type for different type buttons
                                                          //     mini: true,
                                                          //   ),
                                                          // ),
                                                          Expanded(
                                                            child:
                                                                FlutterSocialButton(
                                                              onTap: () {},
                                                              buttonType: ButtonType
                                                                  .facebook, // Button type for different type buttons
                                                              mini: true,
                                                            ),
                                                          ),
                                                          // Expanded(
                                                          //   child:
                                                          //       FlutterSocialButton(
                                                          //     onTap: () {},
                                                          //     buttonType: ButtonType
                                                          //         .apple, // Button type for different type buttons
                                                          //     mini: true,
                                                          //   ),
                                                          // ),
                                                        ],
                                                      ),
                                                      // Row(
                                                      //   mainAxisAlignment:
                                                      //       MainAxisAlignment
                                                      //           .center,
                                                      //   children: [
                                                      //     Expanded(
                                                      //       child:
                                                      //           FlutterSocialButton(
                                                      //         onTap: () {},
                                                      //         buttonType: ButtonType
                                                      //             .google, // Button type for different type buttons
                                                      //         mini: true,
                                                      //       ),
                                                      //     ),
                                                      //     Expanded(
                                                      //       child:
                                                      //           FlutterSocialButton(
                                                      //         onTap: () {},
                                                      //         buttonType: ButtonType
                                                      //             .facebook, // Button type for different type buttons
                                                      //         mini: true,
                                                      //       ),
                                                      //     ),
                                                      //     Expanded(
                                                      //       child:
                                                      //           FlutterSocialButton(
                                                      //         onTap: () {},
                                                      //         buttonType: ButtonType
                                                      //             .apple, // Button type for different type buttons
                                                      //         mini: true,
                                                      //       ),
                                                      //     ),
                                                      //   ],
                                                      // ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const Spacer(),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "Not registered yet? ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              TextButton(
                                                  onPressed: () {
                                                    moveScreen(context,
                                                        const MendedRegister());
                                                  },
                                                  child: const Text(
                                                    "Create Account",
                                                    style: TextStyle(
                                                        color: Colors.green),
                                                  ))
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
                        bottom: size.height * 0.40,
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
