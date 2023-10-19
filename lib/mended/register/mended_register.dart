import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mended_mender/constants.dart';
import 'package:mended_mender/mended/signin/mended_signin.dart';
import 'package:mended_mender/mended/widgets/mended_custom_elevated_button.dart';
import 'package:mended_mender/mended/widgets/mended_top_bar.dart';

class MendedRegister extends StatefulWidget {
  const MendedRegister({super.key});

  @override
  State<MendedRegister> createState() => _MendedRegisterState();
}

class _MendedRegisterState extends State<MendedRegister> {
  //you can put these values where ever you want
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confrimPasswordController = TextEditingController();

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
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(width: size.width / 3.5),
                      const Spacer(),
                      Flexible(
                        flex: 2,
                        child: Container(
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Create account",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                "You are just one step away from being part of this family",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                              Text(
                                                "Love conquers all",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14,
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight:
                                                        FontWeight.normal),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
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
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  TextFormField(
                                                    controller: emailController,
                                                    decoration: InputDecoration(
                                                      hintText: "Username",
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
                                                                .circular(8),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Colors
                                                                    .white), // Border color when focused
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    decoration: InputDecoration(
                                                      hintText: "Your email",
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
                                                                .circular(8),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Colors
                                                                    .white), // Border color when focused
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                        passwordController,
                                                    decoration: InputDecoration(
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
                                                                .circular(8),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Colors
                                                                    .white), // Border color when focused
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  TextFormField(
                                                    controller:
                                                        passwordController,
                                                    decoration: InputDecoration(
                                                      hintStyle:
                                                          const TextStyle(
                                                              color: Colors
                                                                  .white38),
                                                      hintText:
                                                          "Confirm Password",
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Colors
                                                                    .white), // Border color
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide:
                                                            const BorderSide(
                                                                color: Colors
                                                                    .white), // Border color when focused
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
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
                                                          title: 'Signup',
                                                          callback: () {},
                                                          width: size.width / 5,
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
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.center,
                                      //   children: [
                                      //     const Spacer(),
                                      //     Expanded(
                                      //       child: SizedBox(
                                      //         // width: size.width / 4,
                                      //         child: Column(
                                      //           crossAxisAlignment:
                                      //               CrossAxisAlignment.center,
                                      //           children: [
                                      //             const Row(
                                      //               mainAxisAlignment:
                                      //                   MainAxisAlignment
                                      //                       .center,
                                      //               children: [
                                      //                 Expanded(
                                      //                   child: Divider(
                                      //                     color: Colors.white,
                                      //                     height: 2,
                                      //                   ),
                                      //                 ),
                                      //                 Text(
                                      //                   "  Or Sign up with  ",
                                      //                   style: TextStyle(
                                      //                       color: Colors.white,
                                      //                       fontSize: 14,
                                      //                       fontWeight:
                                      //                           FontWeight
                                      //                               .w500),
                                      //                 ),
                                      //                 Expanded(
                                      //                   child: Divider(
                                      //                     color: Colors.white,
                                      //                     height: 2,
                                      //                   ),
                                      //                 ),
                                      //               ],
                                      //             ),
                                      //             const SizedBox(
                                      //               height: 15,
                                      //             ),
                                      //             Row(
                                      //               mainAxisAlignment:
                                      //                   MainAxisAlignment
                                      //                       .center,
                                      //               children: [
                                      //                 Expanded(
                                      //                   child:
                                      //                       FlutterSocialButton(
                                      //                     onTap: () {},
                                      //                     buttonType: ButtonType
                                      //                         .google, // Button type for different type buttons
                                      //                     mini: true,
                                      //                   ),
                                      //                 ),
                                      //                 Expanded(
                                      //                   child:
                                      //                       FlutterSocialButton(
                                      //                     onTap: () {},
                                      //                     buttonType: ButtonType
                                      //                         .facebook, // Button type for different type buttons
                                      //                     mini: true,
                                      //                   ),
                                      //                 ),
                                      //                 Expanded(
                                      //                   child:
                                      //                       FlutterSocialButton(
                                      //                     onTap: () {},
                                      //                     buttonType: ButtonType
                                      //                         .apple, // Button type for different type buttons
                                      //                     mini: true,
                                      //                   ),
                                      //                 ),
                                      //               ],
                                      //             ),
                                      //           ],
                                      //         ),
                                      //       ),
                                      //     ),
                                      //     const Spacer(),
                                      //   ],
                                      // ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Already have an account? ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                moveScreen(context,
                                                    const MendedSignIn());
                                              },
                                              child: const Text(
                                                "Login",
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
