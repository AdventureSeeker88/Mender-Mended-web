import 'package:flutter/material.dart';
import 'package:mended_mender/mended/home/home_screen.dart';
import 'package:mended_mender/mended/register/mended_register.dart';
import 'package:mended_mender/mended/signin/mended_signin.dart';
import 'package:mended_mender/mender/home/home_screen.dart';
import 'package:mended_mender/mender/signin/mender_signin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // Define a custom MaterialColor
  MaterialColor customGreen = const MaterialColor(0xff09BE7D, {
    50: Color(0xffE1F7ED),
    100: Color(0xffB6EDD8),
    200: Color(0xff84E1C0),
    300: Color(0xff51D5A9),
    400: Color(0xff27CC98),
    500: Color(0xff09BE7D), // Default primary color
    600: Color(0xff07B474),
    700: Color(0xff05AC69),
    800: Color(0xff03A35F),
    900: Color(0xff029B50),
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: customGreen,
      ),
      // home: MenderHomeScreen(),
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 900) {
            // If the width is greater than 900, display the web layout
            // return const MenderHomeScreen();
            return const MendedHomeScreen();
          } else {
            // Otherwise, display the mobile layout
            return const Center(
              child: Text("Mobile App"),
            );
          }
        },
      ),
    );
  }
}
