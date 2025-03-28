import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ContactMeScreen extends StatefulWidget {
  const ContactMeScreen({super.key});

  @override
  State<ContactMeScreen> createState() => _ContactMeScreenState();
}

class _ContactMeScreenState extends State<ContactMeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0077FF),
      appBar: AppBar(
        title: Text(
          "contact me".toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF0077FF),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Request Free Consultancy",

              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
                height: 1,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Container(
              height: 272,
              width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hotline 24/7"),
                  Text("(+23) 5535 68 68"),
                  Text(
                    "Address: 2972 Westheimer Rd. Santa Ana, Illinois 85486",
                  ),
                  Text("Email: nevaeh.simmons@example.com"),
                  Text("Fax: (702) 555-0122"),
                  Text("Work Hour: Mon - Sat: 9:00 - 18:00"),
                ],
              ),
            ),
            TextField(decoration: InputDecoration(hintText: "Name*")),
          ],
        ),
      ),
    );
  }
}
