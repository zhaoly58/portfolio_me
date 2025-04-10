import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_me/customWidget/regular_button.dart';

class ProjectsScreen extends StatelessWidget {
  ProjectsScreen({super.key});

  final List<String> projectsList = [
    "preview1",
    "preview2",
    "preview3",
    "preview4",
    "preview5",
    "preview6",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Our Projects".toUpperCase(),
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
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Presenting My Design Portfolio and Case Studies",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF0078FF),
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      elevation: 0,
                      side: BorderSide(color: Color(0XFF0078FF)),
                    ),

                    child: Text(
                      "All",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  CustomRegularButton(buttonTitle: "UI/UX Design"),
                ],
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomRegularButton(buttonTitle: "Branding Design"),
                  SizedBox(width: 30),
                  CustomRegularButton(buttonTitle: "Wordpress"),
                ],
              ),
              SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < projectsList.length; i++)
                    Column(
                      children: [
                        Image.asset("assets/image/${projectsList[i]}.png"),
                        SizedBox(height: 30),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
