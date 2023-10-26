import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:mended_mender/constants.dart';
import 'package:mended_mender/mender/forgetPassword/mender_resetPassword.dart';
import 'package:mended_mender/mender/home/home_screen.dart';
import 'package:mended_mender/mender/register/mender_signup.dart';
import 'package:mended_mender/mender/widgets/custom_elevated_button.dart';
import 'package:mended_mender/mender/widgets/top_bar.dart';

class MenderEmailVerification extends StatefulWidget {
  const MenderEmailVerification({super.key});

  @override
  State<MenderEmailVerification> createState() =>
      _MenderEmailVerificationState();
}

class _MenderEmailVerificationState extends State<MenderEmailVerification> {
  TextEditingController codeController = TextEditingController();

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
                                    padding: EdgeInsets.only(left: 55),
                                    child: const Text(
                                      "Get Your Code",
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
                                    "Please enter 4 digit code sent to your email address.",
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextField(
                                    controller: codeController,
                                    maxLength:
                                        4, // Limit the input to 4 characters
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: 'Enter Code',
                                    ),
                                    // onChanged: (value) {
                                    //   setState(() {
                                    //     verificationCode = value;
                                    //   });
                                    // },
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        "If you don\'t receive code!",
                                        style: TextStyle(
                                            color: Colors.black38,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: const Text(
                                          " Resend",
                                          style: TextStyle(
                                              color: Color(0xff09BE7D),
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
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
                                        child: CustomElevatedButton(
                                          title: 'Verify and Proceed',
                                          callback: () {
                                            moveScreen(context,
                                                const MenderResetPassword());
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
