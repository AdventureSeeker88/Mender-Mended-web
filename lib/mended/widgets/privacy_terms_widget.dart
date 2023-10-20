import 'package:flutter/material.dart';
import 'package:mended_mender/mended/constants.dart';

class PrivacyAndTermsText extends StatelessWidget {
  const PrivacyAndTermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {},
            child: const Text(
              "Privacy",
              style: TextStyle(color: Colors.white54),
            )),
        const Text(
          '-',
          style: TextStyle(color: Colors.white54),
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              "Terms & Condition.",
              style: TextStyle(color: Colors.white54),
            )),
        Text(
          MendedConstants.privacyNameAndYear,
          style: const TextStyle(color: Colors.white38),
        )
      ],
    );
  }
}
