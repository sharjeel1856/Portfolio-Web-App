import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Copyright © 2024"),
            TextButton(
                onPressed: () {
                  launchUrl(
                    Uri.parse(
                        "https://www.linkedin.com/in/muhammad-sharjeel-awan-59a255203"),
                  );
                },
                child: const Text(
                  "Muhammad Sharjeel Awan",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        )
      ],
    );
  }
}
