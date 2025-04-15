import 'package:flutter/material.dart';
import "package:url_launcher/url_launcher.dart";

class RoundSocialButton extends StatelessWidget {
  final String? iconPath;
  final String? urlDestination;

  const RoundSocialButton({
    super.key,
    this.iconPath,
    required this.urlDestination,
  });

  Future<void> launchURL() async {
    final Uri url = Uri.parse(urlDestination!);
    if (!await launchUrl(url)) {
      throw Exception("Can not open the website");
    }
  }

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

        onPressed: () async {
          await launchURL();
        },
        icon: Image.asset("$iconPath"),
      ),
    );
  }
}
