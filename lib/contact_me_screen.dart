import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_me/customWidget/input_field.dart';
import 'package:portfolio_me/customWidget/round_social_button.dart';

class ContactMeScreen extends StatefulWidget {
  const ContactMeScreen({super.key});

  @override
  State<ContactMeScreen> createState() => _ContactMeScreenState();
}

class _ContactMeScreenState extends State<ContactMeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController helpController = TextEditingController();

  bool isChecked = false;

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
      body: SingleChildScrollView(
        child: Padding(
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
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hotline 24/7",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "(+23) 5535 68 68",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ), // Default style
                              children: [
                                TextSpan(
                                  text: "Address: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text:
                                      "2972 Westheimer Rd. Santa Ana, Illinois 85486",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "Email: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: "nevaeh.simmons@example.com"),
                              ],
                            ),
                          ),
                          SizedBox(height: 6),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "Fax: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: "(702) 555-0122"),
                              ],
                            ),
                          ),
                          SizedBox(height: 6),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "Work Hour: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(text: "Mon - Sat: 9:00 - 18:00"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  CustomInputField(
                    placeHolder: "Name*",
                    height: 50,
                    textEditingController: nameController,
                  ),
                  SizedBox(height: 15),
                  CustomInputField(
                    placeHolder: "Email Address*",
                    height: 50,
                    textEditingController: emailController,
                  ),
                  SizedBox(height: 15),
                  CustomInputField(
                    placeHolder: "How can we help you?",
                    height: 50,
                    textEditingController: helpController,
                  ),
                  SizedBox(height: 15),
                  CustomInputField(
                    placeHolder: "How can we help you?",
                    maxLine: 5,
                    textEditingController: helpController,
                  ),
                ],
              ),

              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    //focusColor: Colors.red,
                    //checkColor: Colors.white,
                    //activeColor: Colors.white,
                    //hoverColor: Colors.pink,

                    // fillColor: WidgetStateProperty.resolveWith<Color>((
                    //   Set<WidgetState> states,
                    // ) {
                    //   if (states.contains(WidgetState.disabled)) {
                    //     return Colors.white;
                    //   }
                    //   return Colors.white;
                    // }),
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: "By submitting, i’m agreed to the",
                        style: TextStyle(fontSize: 14),
                        children: [
                          TextSpan(
                            text: " Terms & Conditons",
                            style: const TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () async {
                                    print("Click");
                                  },
                          ),
                          TextSpan(text: "."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00489A),
                      minimumSize: const Size(double.infinity, 40),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Hire me!",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),

              Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Image.asset(
                          "assets/icon/logo-blue.png",
                          width: 36,
                          height: 36,
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(
                        "AeroVision",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      Text(
                        "© Copyright 2023. All Rights Reserved.",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "FOLLOW US: ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RoundSocialButton(iconPath: "assets/icon/facebook.png"),
                      SizedBox(width: 8),
                      RoundSocialButton(iconPath: "assets/icon/twitter.png"),
                      SizedBox(width: 8),
                      RoundSocialButton(iconPath: "assets/icon/linkedin.png"),
                      SizedBox(width: 8),
                      RoundSocialButton(iconPath: "assets/icon/email.png"),
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
