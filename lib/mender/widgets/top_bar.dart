import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final List? row;
  const TopBar({this.row, super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Material(
        elevation: 20,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: SizedBox(
          height: 50,
          width: size.width / 1.2,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset("assets/mender/mender_text.png"),
              if (row != null) ...row!,
              SizedBox(
                width: 10,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
