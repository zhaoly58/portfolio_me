import 'package:flutter/material.dart';
import 'package:portfolio_me/customWidget/service_card.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SERVICES",
          style: TextStyle(
            color: Color(0xFF0078FF),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),

        child: Column(
          children: [
            Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(text: "Exploring My"),
                      TextSpan(text: "\nDesign "),
                      TextSpan(
                        text: "Skills",
                        style: TextStyle(color: Color(0xFF0078FF)),
                      ),
                    ],
                  ),
                ),
                Text(
                  "We transform your ideas into a distinctive web project that both inspires you and captivates your customers",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 25),
                //Image.asset("assets/icon/navArrow.png", scale: 10),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_sharp),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_sharp),
                ),
              ],
            ),

            SizedBox(height: 30),
            ServiceCard(),
          ],
        ),
      ),
    );
  }
}
