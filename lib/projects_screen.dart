import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_me/customWidget/regular_button.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  // final List<String> projectsList = [
  //   "preview1",
  //   "preview2",
  //   "preview3",
  //   "preview4",
  //   "preview5",
  //   "preview6",
  // ];

  Map<String, dynamic> project = {
    "allProject": [
      {"name": "1", "image": "preview1"},
      {"name": "2", "image": "preview2"},
      {"name": "3", "image": "preview3"},
      {"name": "4", "image": "preview4"},
      {"name": "5", "image": "preview5"},
      {"name": "6", "image": "preview6"},
    ],
    "uxui": [
      {"name": "1", "image": "preview4"},
      {"name": "2", "image": "preview5"},
      {"name": "3", "image": "preview6"},
    ],
    "design": [
      {"name": "1", "image": "preview3"},
      {"name": "2", "image": "preview4"},
      {"name": "3", "image": "preview5"},
    ],
  };

  bool allProject = true;
  bool uxui = false;
  bool design = false;

  // List activeColor = [true, false, false];

  List<dynamic> filterData = [];

  @override
  void initState() {
    all();
    super.initState();
  }

  void all() {
    setState(() {
      allProject = true;
      uxui = false;
      design = false;
      filterData = project["allProject"];
    });
  }

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
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomRegularButton(
                    buttonTitle: "ALL",
                    color: allProject ? Colors.amber : Colors.white,
                    onTap: () {
                      all();
                    },
                  ),
                  SizedBox(width: 30),
                  CustomRegularButton(
                    buttonTitle: "UI/UX Design",
                    color: uxui ? Colors.amber : Colors.white,
                    onTap: () {
                      setState(() {
                        allProject = false;
                        design = false;
                        uxui = true;
                        filterData = project["uxui"];
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomRegularButton(
                    buttonTitle: "Branding Design",
                    color: design ? Colors.amber : Colors.white,
                    onTap: () {
                      setState(() {
                        uxui = false;
                        allProject = false;
                        design = true;
                        filterData = project["design"];
                      });
                    },
                  ),
                  SizedBox(width: 30),
                  CustomRegularButton(buttonTitle: "Wordpress"),
                ],
              ),
              SizedBox(height: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < filterData.length; i++)
                    Column(
                      children: [
                        Image.asset(
                          "assets/image/${filterData[i]["image"]}.png",
                        ),
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
