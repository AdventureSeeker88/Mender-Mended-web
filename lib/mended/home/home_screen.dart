import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mended_mender/mended/widgets/mended_top_bar.dart';

class MendedHomeScreen extends StatefulWidget {
  const MendedHomeScreen({super.key});

  @override
  State<MendedHomeScreen> createState() => _MendedHomeScreenState();
}

class _MendedHomeScreenState extends State<MendedHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/mended/home_background.png"))),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                MendedTopBar(
                  row: [
                    Spacer(),
                    Text(
                      'Memeland',
                    ),
                    Image.asset("assets/mended/memeland_image.png"),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Flicks',
                    ),
                    Image.asset("assets/mended/flicks_image.png"),
                    Spacer(
                      flex: 1,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white.withOpacity(0.2),
                      child: Icon(Icons.notifications),
                    )
                  ],
                ),
              ],
            )));
  }
}
