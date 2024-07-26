import 'package:flutter/material.dart';

class OnboardingTopBar extends StatelessWidget {
  final List? row;
  const OnboardingTopBar({this.row, super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0),
      child: Material(
        elevation: 20,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/mended/appbar.png"),
            ),
          ),
          height: 80,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset("assets/mended/mended_text.png"), // First image
                if (row != null) ...row!,
                SizedBox(
                  width: size.width * 0.35,
                ),
                Image.asset("assets/mended/Onboardingtext.png"), // Second image
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
