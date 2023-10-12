import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NextSessionCard extends StatelessWidget {
  final String title;
  final String date;
  final String buddyName;
  final String time;

  NextSessionCard(
      {required this.title,
      required this.date,
      required this.buddyName,
      required this.time});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(15),
      width: 270,
      // height: size.height * 0.22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 12, color: Color(0xff838383)),
          ),
          const SizedBox(height: 25.0),
          Text(
            date,
            style: const TextStyle(fontSize: 12, color: Color(0xff838383)),
          ),
          const SizedBox(height: 4.0),
          Container(
            padding: const EdgeInsets.all(10),
            // width: size.width * 0.20,
            // height: size.height * 0.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              border: Border.all(color: Colors.black12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: const Color(0xff6DD8CF),
                  ),
                  child: const Icon(
                    FontAwesomeIcons.calendarCheck,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      buddyName,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Color(
                            0xff0fbf80,
                          )),
                    ),
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.clock,
                          color: Colors.black26,
                          size: 12,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          time,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black26),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xffe6f7f1),
                    ),
                    child: const Center(
                      child: Text(
                        'Join',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff0fbf80),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
