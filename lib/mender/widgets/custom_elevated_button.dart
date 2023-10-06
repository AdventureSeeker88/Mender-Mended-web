import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String title;
  final VoidCallback callback;
  final double width;
  const CustomElevatedButton(
      {required this.title,
      required this.callback,
      this.width = 150,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(width, 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                backgroundColor: Colors.green),
            onPressed: callback,
            child: Text(title)),
      ),
    );
  }
}
