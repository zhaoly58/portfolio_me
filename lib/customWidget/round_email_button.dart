import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class RoundEmailButton extends StatelessWidget {
  final String? iconPath;

  const RoundEmailButton({super.key, this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: const BoxDecoration(
        color: Color(0xFF79B2F2),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        // onPressed: () {
        //   launchMailto() async {
        //     final mailtoLink = Mailto(
        //       to: ['to@example.com'],
        //       cc: ['cc1@example.com', 'cc2@example.com'],
        //       subject: 'mailto example subject',
        //       body: 'mailto example body',
        //     );
        //     // Convert the Mailto instance into a string.
        //     // Use either Dart's string interpolation
        //     // or the toString() method.
        //     await launch('$mailtoLink');
        //   }
        // },
        onPressed: () async {
          final mailtoLink = Mailto(
            to: ['to@example.com'],
            cc: ['cc1@example.com', 'cc2@example.com'],
            subject: 'mailto example subject',
            body: 'mailto example body',
          );

          final uri = Uri.parse(mailtoLink.toString());

          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          } else {
            throw Exception('Could not launch email client');
          }
        },
        icon: Image.asset("$iconPath"),
      ),
    );
  }
}
