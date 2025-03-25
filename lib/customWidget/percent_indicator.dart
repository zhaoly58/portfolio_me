import 'package:flutter/material.dart';

class CustomPercentIndicator extends StatelessWidget {
  final String? title;
  final double? indicatorWidth;

  const CustomPercentIndicator({super.key, this.title, this.indicatorWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            Container(
              width: indicatorWidth,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
