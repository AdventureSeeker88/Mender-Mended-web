import 'package:flutter/material.dart';
import 'package:mended_mender/constants.dart';
import 'package:mended_mender/mender/forgetPassword/mender_emailVerification.dart';
import 'package:mended_mender/mender/home/home_screen.dart';
import 'package:mended_mender/mender/widgets/custom_elevated_button.dart';
import 'package:mended_mender/mender/widgets/top_bar.dart';

class MenderForgotPassword extends StatefulWidget {
  const MenderForgotPassword({super.key});

  @override
  State<MenderForgotPassword> createState() => _MenderForgotPasswordState();
}

class _MenderForgotPasswordState extends State<MenderForgotPassword> {
  TextEditingController emailController = TextEditingController();

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
                                      "Mail Address Here",
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
                                    "Enter the email address associated with your account.",
                                    style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
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
                                          title: 'Recover Password',
                                          callback: () {
                                            moveScreen(context,
                                                const MenderEmailVerification());
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
