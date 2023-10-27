import 'package:flutter/material.dart';

class CustomElevatedButton2 extends StatelessWidget {
  final String title;
  final VoidCallback callback;
  final double width;
  const CustomElevatedButton2(
      {required this.title,
      required this.callback,
      this.width = 220,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(width, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                backgroundColor: Color(0xff09BE7D)),
            onPressed: callback,
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
