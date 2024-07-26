import 'package:flutter/material.dart';

class MendedCustomElevatedButton extends StatelessWidget {
  final String title;
  final VoidCallback callback;
  final double width;
  const MendedCustomElevatedButton(
      {required this.title,
      required this.callback,
      this.width = 150,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage("assets/mended/elevated_button.png"))),
      child: Center(
          child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: InkWell(
                onTap: callback,

                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     fixedSize: Size(width, 40),
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(18)),
                //   ),
                //   onPressed: callback,
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ))),
    );
  }
}
