import 'package:flutter/material.dart';

class CustomRegularButton extends StatelessWidget {
  final String? buttonTitle;
  const CustomRegularButton({super.key, this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 30),
        elevation: 0,
        side: BorderSide(color: Color(0XFF0078FF)),
      ),

      child: Text(
        "$buttonTitle",
        style: TextStyle(
          fontSize: 15,
          color: Color(0XFF0078FF),
          fontWeight: FontWeight.bold,
          height: 1,
        ),
      ),
    );
  }
}
