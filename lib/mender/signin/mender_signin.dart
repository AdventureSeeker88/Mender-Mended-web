import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mended_mender/constants.dart';
import 'package:mended_mender/mender/forgetPassword/mender_forgetPassword.dart';
import 'package:mended_mender/mender/home/home_screen.dart';
import 'package:mended_mender/mender/register/mender_signup.dart';
import 'package:mended_mender/mender/widgets/custom_elevated_button.dart';
import 'package:mended_mender/mender/widgets/top_bar.dart';

class MenderSignIn extends StatefulWidget {
  const MenderSignIn({super.key});

  @override
  State<MenderSignIn> createState() => _MenderSignInState();
}

class _MenderSignInState extends State<MenderSignIn> {
  //you can put these values where ever you want
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void forgotPassword() {}

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
              image: AssetImage("assets/mender/background.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const TopBar(),
            Row(
              children: [
                const Spacer(
                  flex: 4,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width / 4,
                      height: size.height / 1.2,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              " Email",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Card(
                              color: Colors.white,
                              elevation: 5,
                              child: TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                    hintText: "Email",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              " Password",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Card(
                              color: Colors.white,
                              elevation: 5,
                              child: TextFormField(
                                obscureText: true,
                                controller: passwordController,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      moveScreen(context,
                                          const MenderForgotPassword());
                                    },
                                    child: const Text(
                                      "Forgot your Password?",
                                      style: TextStyle(color: Colors.black54),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomElevatedButton(
                                    title: 'Login',
                                    callback: () {
                                      moveScreen(
                                          context, const MenderHomeScreen());
                                    },
                                    width: double.infinity,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    color: Colors.green,
                                    height: 2,
                                  ),
                                ),
                                Text(
                                  "  Or Sign up with  ",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                  child: Divider(
                                    color: Colors.green,
                                    height: 2,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
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
                                InkWell(
                                    onTap: () {
                                      moveScreen(context, const MenderSignUp());
                                    },
                                    child: const Text(
                                      "Create Account",
                                      style: TextStyle(color: Colors.green),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const Spacer(flex: 1),
              ],
            )
          ],
        ),
      ),
    );
  }
}
