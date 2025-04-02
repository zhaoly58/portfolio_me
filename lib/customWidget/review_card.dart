import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String? photo;
  final String? reviewBody;
  final String? name;
  final String? workTitle;

  const ReviewCard({
    super.key,
    this.photo,
    this.reviewBody,
    this.name,
    this.workTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),

          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 15),

              ClipOval(
                child: Image.asset(
                  "assets/photo/$photo",
                  fit: BoxFit.cover,
                  width: 150,
                  height: 150,
                ),
              ),

              //Image.asset("assets/photo/$photo", scale: 3),
              SizedBox(height: 15),
              Image.asset("assets/icon/five_stars.png", scale: 3),
              SizedBox(height: 15),
              Text(
                "$reviewBody",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),

              SizedBox(height: 15),
              Text(
                "$name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "$workTitle",
                style: TextStyle(color: Colors.black, fontSize: 19),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
