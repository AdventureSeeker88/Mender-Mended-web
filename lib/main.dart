import 'package:flutter/material.dart';
import 'package:mended_mender/mended/signin/mended_signin.dart';
import 'package:mended_mender/mender/home/home_screen.dart';
import 'package:mended_mender/mender/register/mender_signup.dart';
import 'package:mended_mender/mender/signin/mender_signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
