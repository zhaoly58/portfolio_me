import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String? title;
  final String? subTitle;

  const ServiceCard({super.key, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("clicked service card");
      },
      child: Container(
        width: double.infinity,
        //height: 366,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFF0078FF),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 30, right: 9, top: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 10),
              Image.asset("assets/icon/webPad.png", scale: 7),
              SizedBox(height: 20),
              Text(
                "$title",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),
              Text(
                "$subTitle",
                style: TextStyle(color: Colors.white, fontSize: 19),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Learn more",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(width: 8),
                  Image.asset("assets/icon/arrowRight.png", scale: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
