import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mended_mender/constants.dart';
import 'package:mended_mender/mended/widgets/mended_custom_elevated_button.dart';
import 'package:mended_mender/mended/widgets/mended_top_bar.dart';

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
        body: Column(
          children: [
            const MendedTopBar(),
            Image.asset("assets/mended/welcome_text.png"),
            const SizedBox(
              height: 10,
            ),

            Flexible(
                child: Row(
              children: [
                SizedBox(width: size.width / 3.5),
                Expanded(
                  child: Container(
                    height: size.height / 1.8,
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
                    child: Card(
                      elevation: 0,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // const Text(
                              //   " Email",
                              //   style: TextStyle(
                              //       color: Colors.black54,
                              //       fontSize: 15,
                              //       fontWeight: FontWeight.bold),
                              // ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: size.width / 4,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextFormField(
                                          controller: emailController,
                                          decoration: InputDecoration(
                                              hintText: "Email",
                                              border: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              )),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        TextFormField(
                                          controller: passwordController,
                                          decoration: InputDecoration(
                                              hintText: "Password",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  borderSide: const BorderSide(
                                                      color: Colors.white))),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                                onPressed: () {
                                                  forgotPassword();
                                                },
                                                child: const Text(
                                                  "Forgot your Password?",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ))
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: MendedCustomElevatedButton(
                                                title: 'Login',
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
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: size.width / 4,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Divider(
                                                color: Colors.white,
                                                height: 2,
                                              ),
                                            ),
                                            Text(
                                              "  Or Sign up with  ",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Expanded(
                                              child: Divider(
                                                color: Colors.white,
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
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: FlutterSocialButton(
                                                onTap: () {},
                                                buttonType: ButtonType
                                                    .google, // Button type for different type buttons
                                                mini: true,
                                              ),
                                            ),
                                            Expanded(
                                              child: FlutterSocialButton(
                                                onTap: () {},
                                                buttonType: ButtonType
                                                    .facebook, // Button type for different type buttons
                                                mini: true,
                                              ),
                                            ),
                                            Expanded(
                                              child: FlutterSocialButton(
                                                onTap: () {},
                                                buttonType: ButtonType
                                                    .apple, // Button type for different type buttons
                                                mini: true,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Not registered yet? ",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        // moveScreen(
                                        //     context, const MenderSignUp());
                                      },
                                      child: const Text(
                                        "Create Account",
                                        style: TextStyle(color: Colors.green),
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
                SizedBox(width: size.width / 3.5),
              ],
            ))
            // Row(
            //   children: [
            //     const Spacer(
            //       flex: 4,
            //     ),
            //     Row(
            //       children: [
            //         SizedBox(
            //           width: size.width / 4,
            //           height: size.height / 1.2,
            //           child: Center(
            //             child: Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 const Text(
            //                   " Email",
            //                   style: TextStyle(
            //                       color: Colors.black54,
            //                       fontSize: 15,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //                 Card(
            //                   color: Colors.white,
            //                   elevation: 5,
            //                   child: TextFormField(
            //                     controller: emailController,
            //                     decoration: InputDecoration(
            //                         hintText: "Email",
            //                         border: OutlineInputBorder(
            //                             borderRadius: BorderRadius.circular(15),
            //                             borderSide: BorderSide.none)),
            //                   ),
            //                 ),
            //                 const SizedBox(
            //                   height: 10,
            //                 ),
            //                 const Text(
            //                   " Password",
            //                   style: TextStyle(
            //                       color: Colors.black54,
            //                       fontSize: 15,
            //                       fontWeight: FontWeight.bold),
            //                 ),
            //                 Card(
            //                   color: Colors.white,
            //                   elevation: 5,
            //                   child: TextFormField(
            //                     controller: passwordController,
            //                     decoration: InputDecoration(
            //                         hintText: "Password",
            //                         border: OutlineInputBorder(
            //                             borderRadius: BorderRadius.circular(15),
            //                             borderSide: BorderSide.none)),
            //                   ),
            //                 ),
            //                 const SizedBox(
            //                   height: 10,
            //                 ),
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.end,
            //                   children: [
            //                     TextButton(
            //                         onPressed: () {
            //                           forgotPassword();
            //                         },
            //                         child: const Text(
            //                           "Forgot your Password?",
            //                           style: TextStyle(color: Colors.black54),
            //                         ))
            //                   ],
            //                 ),
            //                 const SizedBox(
            //                   height: 15,
            //                 ),
            //                 Row(
            //                   children: [
            //                     Expanded(
            //                       child: CustomElevatedButton(
            //                         title: 'Login',
            //                         callback: () {},
            //                         width: double.infinity,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 const SizedBox(
            //                   height: 15,
            //                 ),
            //                 const Row(
            //                   children: [
            //                     Expanded(
            //                       child: Divider(
            //                         color: Colors.green,
            //                         height: 2,
            //                       ),
            //                     ),
            //                     Text(
            //                       "  Or Sign up with  ",
            //                       style: TextStyle(
            //                           color: Colors.black54,
            //                           fontSize: 14,
            //                           fontWeight: FontWeight.bold),
            //                     ),
            //                     Expanded(
            //                       child: Divider(
            //                         color: Colors.green,
            //                         height: 2,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 const SizedBox(
            //                   height: 15,
            //                 ),
            //                 Row(
            //                   children: [
            //                     Expanded(
            //                       child: FlutterSocialButton(
            //                         onTap: () {},
            //                         buttonType: ButtonType
            //                             .google, // Button type for different type buttons
            //                         mini: true,
            //                       ),
            //                     ),
            //                     Expanded(
            //                       child: FlutterSocialButton(
            //                         onTap: () {},
            //                         buttonType: ButtonType
            //                             .facebook, // Button type for different type buttons
            //                         mini: true,
            //                       ),
            //                     ),
            //                     Expanded(
            //                       child: FlutterSocialButton(
            //                         onTap: () {},
            //                         buttonType: ButtonType
            //                             .apple, // Button type for different type buttons
            //                         mini: true,
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //                 const SizedBox(
            //                   height: 15,
            //                 ),
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [
            //                     const Text(
            //                       "Not registered yet? ",
            //                       style: TextStyle(
            //                           color: Colors.black54,
            //                           fontSize: 14,
            //                           fontWeight: FontWeight.bold),
            //                     ),
            //                     TextButton(
            //                         onPressed: () {
            //                           moveScreen(context, const MenderSignUp());
            //                         },
            //                         child: const Text(
            //                           "Create Account",
            //                           style: TextStyle(color: Colors.green),
            //                         ))
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ),
            //         )
            //       ],
            //     ),
            //     const Spacer(flex: 1),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
