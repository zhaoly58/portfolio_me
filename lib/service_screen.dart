import 'package:flutter/material.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SERVICES", style: TextStyle(color: Color(0xFF0078FF), fontWeight: FontWeight.bold)),
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
                      TextSpan(text: "Skills", style: TextStyle(color: Color(0xFF0078FF))),
                      
                    ],
                  ),
                ),
                Text("We transform your ideas into a distinctive web project that both inspires you and captivates your customers",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 25),
                Image.asset("assets/icon/navArrow.png", scale: 10,)
                
              ],
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                print("clicked");
              },
              child: Container(
                width: double.infinity,
                height: 366,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF0078FF),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 9,
                    top: 30,
                    bottom: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(height: 10),
                      Image.asset("assets/icon/webPad.png", scale: 7),
                      SizedBox(height: 20),
                      Text(
                        "Website / App Design UX / UI Design",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      const Text(
                        "Creating Engaging Digital Experiences for Websites and Apps through UX/UI Design",
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
            ),
          ],
        ),
      ),
    );
  }
}
