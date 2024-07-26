import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SessionCard extends StatelessWidget {
  final String date;
  final String buddyName;
  final String time;
  final double height;
  final double width;

  SessionCard({
    required this.date,
    required this.buddyName,
    required this.time,
    this.height = 50.0, // Default height
    this.width = 250.0,   // Default width
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          date,
          style: const TextStyle(fontSize: 12, color: Colors.white70),
        ),
        const SizedBox(height: 4.0),
        Container(
          height: height,
          width: width,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            border: Border.all(color: Colors.black12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      color: Color(0xff0fbf80),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        FontAwesomeIcons.clock,
                        color: Colors.black54,
                        size: 12,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        time,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 20),
              InkWell(
                onTap: () {
                  // Add your onTap logic here
                },
                child: Container(
                  height: 25,
                  width: 50,
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
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
