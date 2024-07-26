import 'package:flutter/material.dart';
import 'package:mended_mender/constants.dart';
import 'package:mended_mender/mended/signin/mended_signin.dart';
import 'package:mended_mender/mended/widgets/main_scaffold_widget.dart';
import 'package:mended_mender/mended/widgets/mended_custom_elevated_button.dart';
import 'package:mended_mender/mended/widgets/mended_top_bar.dart';
import 'package:mended_mender/mended/widgets/privacy_terms_widget.dart';

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
  TextEditingController confirmPasswordController = TextEditingController();
  bool isSelected = false;
  bool isChecked = false;
  bool obscurePassword = true; // Initially, the password is obscured.
  void togglePasswordVisibility() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }

  bool obscurePassword2 = true; // Initially, the password is obscured.
  void togglePasswordVisibility2() {
    setState(() {
      obscurePassword2 = !obscurePassword2;
    });
  }

  void selectTerms() {}
  void forgotPassword() async {}

  void login() async {}

  void signupGoogle() async {}
  void signupFacebook() async {}
  void signupApple() async {}

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print("Width " + size.width.toString());

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          // If the width is greater than 900, display the web layout
          // return const MenderHomeScreen();
          return MainScaffoldWidget(
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const MendedTopBar(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset(
                      //   "assets/mended/welcome_text.png",
                      //   width: size.width > 1200 ? 340 : 280,
                      //   fit: BoxFit.fitWidth,
                      // ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      SizedBox(height: size.height * 0.02),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Create account",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 23,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Text(
                                                      "You are just one step away from being part of this family",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white70,
                                                          fontSize: 16,
                                                          fontWeight: FontWeight
                                                              .normal),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "Love conquers all",
                                                      style: TextStyle(
                                                          color: Colors.white60,
                                                          fontSize: 14,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                          fontWeight:
                                                              FontWeight.w100),
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                  ],
                                                ),
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
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      TextFormField(
                                                        controller:
                                                            usernameController,
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white70),
                                                        decoration:
                                                            InputDecoration(
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
                                                        controller:
                                                            emailController,
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white70),
                                                        decoration:
                                                            InputDecoration(
                                                          hintText:
                                                              "Your email",
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
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15,
                                                                right: 10),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: Colors
                                                                .white, // Set the border color to white
                                                            width:
                                                                1.0, // Set the border width as needed
                                                          ),
                                                        ),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Expanded(
                                                              child:
                                                                  TextFormField(
                                                                obscureText:
                                                                    obscurePassword,
                                                                controller:
                                                                    passwordController,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white70),
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintStyle: const TextStyle(
                                                                      color: Colors
                                                                          .white38),
                                                                  hintText:
                                                                      "Password",
                                                                  // enabledBorder:
                                                                  //     OutlineInputBorder(
                                                                  //   borderSide:
                                                                  //       const BorderSide(
                                                                  //           color:
                                                                  //               Colors.white),
                                                                  //   borderRadius:
                                                                  //       BorderRadius
                                                                  //           .circular(
                                                                  //               8),
                                                                  // ),
                                                                  // focusedBorder:
                                                                  //     OutlineInputBorder(
                                                                  //   borderSide:
                                                                  //       const BorderSide(
                                                                  //           color:
                                                                  //               Colors.white),
                                                                  //   borderRadius:
                                                                  //       BorderRadius
                                                                  //           .circular(8),
                                                                  // ),
                                                                ),
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap:
                                                                  togglePasswordVisibility,
                                                              child: Icon(
                                                                  obscurePassword
                                                                      ? Icons
                                                                          .visibility_off
                                                                      : Icons
                                                                          .visibility,
                                                                  color: Colors
                                                                      .white70),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Container(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 15,
                                                                right: 10),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                          border: Border.all(
                                                            color: Colors
                                                                .white, // Set the border color to white
                                                            width:
                                                                1.0, // Set the border width as needed
                                                          ),
                                                        ),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Expanded(
                                                              child:
                                                                  TextFormField(
                                                                obscureText:
                                                                    obscurePassword2,
                                                                controller:
                                                                    confirmPasswordController,
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white70),
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintStyle: const TextStyle(
                                                                      color: Colors
                                                                          .white38),
                                                                  hintText:
                                                                      "Confirm Password",
                                                                ),
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap:
                                                                  togglePasswordVisibility2,
                                                              child: Icon(
                                                                obscurePassword2
                                                                    ? Icons
                                                                        .visibility_off
                                                                    : Icons
                                                                        .visibility,
                                                                color: Colors
                                                                    .white70,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      // TextFormField(
                                                      //   controller:
                                                      //       confirmPasswordController,
                                                      //   style: TextStyle(
                                                      //       color:
                                                      //           Colors.white70),
                                                      //   decoration:
                                                      //       InputDecoration(
                                                      //     hintStyle:
                                                      //         const TextStyle(
                                                      //             color: Colors
                                                      //                 .white38),
                                                      //     hintText:
                                                      //         "Confirm Password",
                                                      //     enabledBorder:
                                                      //         OutlineInputBorder(
                                                      //       borderSide:
                                                      //           const BorderSide(
                                                      //               color: Colors
                                                      //                   .white), // Border color
                                                      //       borderRadius:
                                                      //           BorderRadius
                                                      //               .circular(
                                                      //                   8),
                                                      //     ),
                                                      //     focusedBorder:
                                                      //         OutlineInputBorder(
                                                      //       borderSide:
                                                      //           const BorderSide(
                                                      //               color: Colors
                                                      //                   .white), // Border color when focused
                                                      //       borderRadius:
                                                      //           BorderRadius
                                                      //               .circular(
                                                      //                   8),
                                                      //     ),
                                                      //   ),
                                                      // ),
                                                      const SizedBox(
                                                        height: 15,
                                                      ),
                                                      Row(
                                                        children: <Widget>[
                                                          Checkbox(
                                                            checkColor:
                                                                Colors.white,
                                                            activeColor:
                                                                Colors.green,
                                                            value: isChecked,
                                                            onChanged:
                                                                (bool? value) {
                                                              setState(() {
                                                                isChecked =
                                                                    value!;
                                                              });
                                                            },
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              'I accept the terms and privacy policy',
                                                              style: TextStyle(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .white),
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
                                                                .center,
                                                        children: [
                                                          Flexible(
                                                            child:
                                                                MendedCustomElevatedButton(
                                                              title: 'Signup',
                                                              callback: () {},
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
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                moveScreen(context, const MendedSignIn());
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.green),
                              ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  SizedBox(
                    height: size.height / 10,
                    child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: PrivacyAndTermsText()),
                  )
                ],
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
