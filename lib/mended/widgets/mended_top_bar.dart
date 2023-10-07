import 'package:flutter/material.dart';

class MendedTopBar extends StatelessWidget {
  final List? row;
  const MendedTopBar({this.row, super.key});

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
                  image: AssetImage("assets/mended/appbar.png"))),
          height: 80,
          // width: size.width / 1.2,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.asset("assets/mended/mended_text.png"),
              if (row != null) ...row!,
              const SizedBox(
                width: 10,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
