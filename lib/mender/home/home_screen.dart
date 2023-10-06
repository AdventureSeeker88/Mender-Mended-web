import 'package:flutter/material.dart';
import 'package:mended_mender/mender/widgets/top_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/mender/main_background.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TopBar(
                  row: [
                    Spacer(),
                    getButton(Icons.play_circle, "Flicks", true),
                    getButton(Icons.calendar_month, "Calendar", false),
                    getButton(Icons.wallet, "Wallet", false),
                    getButton(Icons.group, "Client list", true),
                    getButton(Icons.message, "Messages", false),
                    getButton(Icons.person, "Profile", false),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget getButton(IconData icon, String title, bool isSelected) {
    Color color = Colors.black54;
    if (isSelected) {
      color = Colors.green;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: color,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(color: color, fontSize: 18),
          )
        ],
      ),
    );
  }
}
