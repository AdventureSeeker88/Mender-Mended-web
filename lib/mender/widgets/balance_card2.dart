import 'package:flutter/material.dart';

class BalanceCard2 extends StatelessWidget {
  final String title;
  final String lastPayment;
  final String lastWithdraw;
  final String totalBalance;
  late VoidCallback? onButtonPressed;

  BalanceCard2({
    required this.title,
    required this.totalBalance,
    required this.lastPayment,
    required this.lastWithdraw,
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
          height: size.height * 0.26,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                blurStyle: BlurStyle.outer,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0)
                    .copyWith(bottom: size.height * 0.007),
                child: Text(
                  'Total Balance',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
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
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 3),
                child: Container(
                  height: 1, // Adjust the height of the line
                  width: size.width *
                      0.14, // The width of the line to span the entire width of its parent
                  color: Colors.black12, // The color of the line
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 3),
                child: Text(
                  'Last payment ',
                  style: TextStyle(
                      color: Colors.black54, fontSize: 13, letterSpacing: 2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(lastPayment,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 15,
                    )),
              ),
              SizedBox(
                height: size.height * 0.007,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Last withdraw ',
                    style: TextStyle(
                        color: Colors.black54, fontSize: 13, letterSpacing: 2)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(lastWithdraw,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      fontSize: 15,
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
