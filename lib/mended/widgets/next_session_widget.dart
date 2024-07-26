import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mended_mender/mended/widgets/nextsession_reuablecardonly.dart';

class NextSessionCardMended extends StatelessWidget {
  final String title;
  

  NextSessionCardMended(
      {required this.title,
      });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(15),
      width: 270,
      // height: size.height * 0.22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xff174438),
        border: Border.all(color: Colors.white12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 12, color: Colors.white70),
          ),
          const SizedBox(height: 25.0),
         SessionCard(date: '07 September 2023', buddyName: 'Dr. Alejandra Vega', time: '12.00 - 16.00')
        ],
      ),
    );
  }
}
