import 'package:flutter/material.dart';

class RoundSocialButton extends StatelessWidget {
  final String? iconPath;
  const RoundSocialButton({super.key, this.iconPath});

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
        onPressed: () {},
        icon: Image.asset("$iconPath"),
      ),
    );
  }
}
