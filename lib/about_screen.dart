import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:portfolio_me/customWidget/percent_indicator.dart";

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About me".toUpperCase(),
          style: TextStyle(
            color: Color(0xFF0078FF),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_circle_left_sharp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/image/aboutMe.png",
                    fit: BoxFit.cover,
                    width: 300,
                    height: 300,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "About Me",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade800,
                      ),
                    ),
                    // Text(
                    //   "20 Year’s Experience",
                    //   style: TextStyle(
                    //     fontSize: 50,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.blue.shade800,
                    //   ),
                    //   textAlign: TextAlign.center,
                    // ),
                    // Text(
                    //   "on Product Design",
                    //   style: TextStyle(
                    //     fontSize: 50,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.black,
                    //   ),
                    //   textAlign: TextAlign.center,
                    // ),
                    // Text(
                    //   "Product",
                    //   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    // ),
                    // Text(
                    //   "Designer",
                    //   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    // ),
                    // Text(
                    //   "Hello there! I'm Robert Junior. I specialize in web design and development, and I'm deeply passionate and committed to my craft. With 20 years of experience as a professional graphic designer",
                    //   style: TextStyle(fontSize: 18.5, color: Colors.black),
                    //   textAlign: TextAlign.center,
                    // ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.blue.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(text: "20 Year’s"),
                          TextSpan(text: "\nExperience"),
                        ],
                      ),
                    ),

                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(text: "on Product"),
                          TextSpan(text: "\nDesign"),
                        ],
                      ),
                    ),

                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                        ), // default style
                        children: [
                          TextSpan(
                            text: "Hello there! I'm ", // regular text
                          ),
                          TextSpan(
                            text: "Robert Junior", // bold part
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                ". I specialize in web design and development, and I'm deeply passionate and committed to my craft. With ", // regular text
                          ),
                          TextSpan(
                            text: "20 years", // bold part
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text:
                                " of experience as a professional graphic designer", // regular text
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    minimumSize: Size(double.infinity, 40),
                  ),
                  child: Text(
                    "Main Skills",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 40),
                    side: BorderSide(color: Colors.blue.shade800),
                  ),
                  child: Text(
                    "Awards",
                    style: TextStyle(color: Colors.blue.shade800, fontSize: 20),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 40),
                    side: BorderSide(color: Colors.blue.shade800),
                  ),
                  child: Text(
                    "Education",
                    style: TextStyle(color: Colors.blue.shade800, fontSize: 20),
                  ),
                ),
                SizedBox(height: 20),

                CustomPercentIndicator(
                  title: "User Experience Design - UI/UX",
                  indicatorWidth: 350,
                ),
                CustomPercentIndicator(
                  title: "Web&User Interface Design",
                  indicatorWidth: 300,
                ),
                CustomPercentIndicator(
                  title: "Interaction Design - Animation",
                  indicatorWidth: 270,
                ),

                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(
                //       "Interaction Design - Animation",
                //       style: TextStyle(color: Colors.black),
                //     ),
                //     SizedBox(height: 10),
                //     Stack(
                //       children: [
                //         Container(
                //           width: double.infinity,
                //           height: 20,
                //           decoration: BoxDecoration(
                //             color: Colors.grey.shade300,
                //             borderRadius: BorderRadius.circular(20),
                //           ),
                //         ),

                //         Container(
                //           width: 280,
                //           height: 20,
                //           decoration: BoxDecoration(
                //             color: Colors.blue.shade800,
                //             borderRadius: BorderRadius.circular(20),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
