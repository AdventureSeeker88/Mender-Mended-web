import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String title;
  final String totalBalance;
  late VoidCallback? onButtonPressed;

  BalanceCard({
    required this.title,
    required this.totalBalance,
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: size.width * 0.16,
          height: size.height * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xff82e5c1),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                blurStyle: BlurStyle.outer,
              )
            ],
          ),
          child: Container(
            width: size.width * 0.16,
            height: size.height * 0.15,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(65.0),
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Total Balance',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 13, bottom: 8),
                  child: Text(
                    totalBalance,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff05b475),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
