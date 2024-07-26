import 'package:flutter/material.dart';
import 'package:mended_mender/constants.dart';
import 'package:mended_mender/mender/forgetPassword/mender_emailVerification.dart';
import 'package:mended_mender/mender/home/home_screen.dart';
import 'package:mended_mender/mender/signin/mender_signin.dart';
import 'package:mended_mender/mender/widgets/custom_elevated_button.dart';
import 'package:mended_mender/mender/widgets/top_bar.dart';

class MenderResetPassword extends StatefulWidget {
  const MenderResetPassword({super.key});

  @override
  State<MenderResetPassword> createState() => _MenderResetPasswordState();
}

class _MenderResetPasswordState extends State<MenderResetPassword> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print("Width " + size.width.toString());

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          // If the width is greater than 900, display the web layout
          // return MenderHomeScreen();
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
                                  Padding(
                                    padding: EdgeInsets.only(left: 45),
                                    child: const Text(
                                      "Enter New Password",
                                      style: TextStyle(
                                          color: Color(0xff09BE7D),
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
                                        color: Colors.black38,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 20,
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
                                      controller: newPasswordController,
                                      decoration: InputDecoration(
                                          hintText: "New Password",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide.none)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    " Confirm Password",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Card(
                                    color: Colors.white,
                                    elevation: 5,
                                    child: TextFormField(
                                      // obscureText: true,
                                      controller: confirmPasswordController,
                                      decoration: InputDecoration(
                                          hintText: "Confirm Password",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide.none)),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomElevatedButton(
                                          title: 'Continue',
                                          callback: () {
                                            moveScreen(
                                                context, const MenderSignIn());
                                          },
                                          width: double.infinity,
                                        ),
                                      ),
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
        } else {
          // Otherwise, display the mobile layout
          return Center(
            child: Text("Mobile App"),
          );
        }
      },
    );
  }
}
