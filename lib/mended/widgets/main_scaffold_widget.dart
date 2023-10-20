import 'package:flutter/material.dart';

class MainScaffoldWidget extends StatelessWidget {
  final Widget body;
  const MainScaffoldWidget({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/mended/background.png"))),
        child: Scaffold(backgroundColor: Colors.transparent, body: body));
  }
}
