import "dart:io";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:image_picker/image_picker.dart";
import "package:portfolio_me/customWidget/side_menu_list.dart";
import "package:portfolio_me/screen_path.dart";
import "package:url_launcher/url_launcher.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ImagePicker imagePicker = ImagePicker();

  File? imageFile;

  Future<void> getImage() async {
    final XFile? pickImage = await imagePicker.pickImage(
      source: ImageSource.camera,
    );
    if (pickImage != null) {
      setState(() {
        imageFile = File(pickImage.path);
      });
    }
  }

  Future<void> launchURL() async {
    final Uri url = Uri.parse("https://flutter.dev/");
    if (!await launchUrl(url)) {
      throw Exception("Can not open the website");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: InkWell(
        //   onTap: () {},
        //   child: Image.asset("assets/icon/logo-icon.png", scale: 12),
        // ),
        leading: Tooltip(
          message: "I'm tooltip!",
          child: TextButton(
            onPressed: () {},
            child: Image.asset("assets/icon/logo-icon.png", scale: 12),
          ),
        ),
        title: Text(
          "Aero Vision",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          Builder(
            builder: (context) {
              return InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: Image.asset("assets/icon/menu-02.png", scale: 12),
              );
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              SideMenuList(
                title: "About Me",
                titleIcon: Icon(Icons.home_filled),
                pagePath: ScreenPath.aboutScreen,
              ),
              Divider(height: 0),
              SideMenuList(
                title: "Projects",
                titleIcon: Icon(Icons.display_settings),
                pagePath: ScreenPath.projectsScreen,
              ),
              Divider(height: 0),
              SideMenuList(
                title: "Milestones",
                titleIcon: Icon(Icons.point_of_sale),
                pagePath: ScreenPath.milestonesScreen,
              ),
              Divider(height: 0),
              SideMenuList(
                title: "Testimonials",
                titleIcon: Icon(Icons.feedback),
                pagePath: ScreenPath.testimonialsScreen,
              ),
              Divider(height: 0),
              SideMenuList(
                title: "Service",
                titleIcon: Icon(Icons.room_service),
                pagePath: ScreenPath.serviceScreen,
              ),
              Divider(height: 0),
              SideMenuList(
                title: "Contact Me",
                titleIcon: Icon(Icons.call),
                pagePath: ScreenPath.contactMeScreen,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () async {
                    await getImage();
                  },
                  child: ClipOval(
                    child:
                        imageFile != null
                            ? Image.file(
                              imageFile!,
                              fit: BoxFit.cover,
                              width: 300,
                              height: 300,
                            )
                            : Image.asset(
                              "assets/image/profile.webp",
                              fit: BoxFit.cover,
                              width: 300,
                              height: 300,
                            ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 15),

                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Default color
                        ),
                        children: [
                          TextSpan(
                            text: "Welcome to my Portfolio\n",
                            style: TextStyle(fontSize: 20),
                          ),

                          TextSpan(
                            text: "Hi I’m\n",
                            style: TextStyle(fontSize: 50, height: 1.5),
                          ),
                          // WidgetSpan(
                          //   child: Tooltip(
                          //     message: "I'm tooltip!",
                          //     child: GestureDetector(
                          //       onTap: () {
                          //         // Your action here
                          //       },
                          //       child: Text(
                          //         "Robert Junior",
                          //         style: TextStyle(
                          //           fontSize: 50,
                          //           fontWeight: FontWeight.bold,
                          //           color: Color(0xFF0077FF),
                          //           height: 1,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          TextSpan(
                            text: "Robert Junior",
                            style: TextStyle(
                              fontSize: 50,
                              height: 1,
                              color: Color(0xFF0077FF),
                            ),
                          ),
                          TextSpan(
                            text: "\nProduct\nDesigner",
                            style: TextStyle(fontSize: 50, height: 1),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),
                    Text(
                      "Collaborating with highly skilled individuals, our agency delivers top-quality services.",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    context.push(
                      ScreenPath.contactMeScreen,
                      // extra: {
                      //   "name": "Jimmy",
                      //   "age": "31",
                      //   "company": "CMatrix Corporation",
                      // },
                    );
                    // showDialog(
                    //   context: context,
                    //   builder: (context) {
                    //     return AlertDialog(
                    //       title: Text("Hello Jimmy!"),
                    //       content: Column(
                    //         mainAxisSize: MainAxisSize.min,
                    //         children: [
                    //           Text("asdjkasmdasn d"),
                    //           Text("asdaskdmaskdmklasmdk;al d"),
                    //         ],
                    //       ),
                    //       actions: [
                    //         TextButton(
                    //           onPressed: () {
                    //             Navigator.pop(
                    //               context,
                    //             ); // 👈 Dismisses the sheet
                    //           },
                    //           child: Text("Yes"),
                    //         ),
                    //         TextButton(
                    //           onPressed: () {
                    //             Navigator.pop(context);
                    //           },
                    //           child: Text("Cancel"),
                    //         ),
                    //       ],
                    //       actionsAlignment: MainAxisAlignment.center,
                    //     );
                    //   },
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0077FF),
                    minimumSize: Size(double.infinity, 40),
                  ),
                  child: Text(
                    "Hire Me!",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () async {
                    // Fluttertoast.showToast(
                    //   msg: "Error occurred",
                    //   gravity: ToastGravity.TOP,
                    //   backgroundColor: Colors.red,
                    // );
                    await launchURL();
                    // showModalBottomSheet(
                    //   context: context,
                    //   builder: (context) {
                    //     return Container(
                    //       height: 200,
                    //       width: double.infinity,
                    //       color: Colors.green,
                    //       child: Text("Bottom Sheet"),
                    //     );
                    //   },
                    // );
                    // context.push(
                    //   ScreenPath.serviceScreen,
                    //   extra: {
                    //     "name": "Jimmy",
                    //     "age": "31",
                    //     "company": "CMatrix Corporation",
                    //   },
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 40),
                    side: BorderSide(color: Color(0xFF0077FF)),
                  ),
                  label: Text(
                    "Download CV",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0077FF),
                    ),
                  ),
                  icon: Image.asset("assets/icon/icon-download.png", scale: 25),
                  iconAlignment: IconAlignment.end,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    children: [
                      for (int i = 1; i <= 5; i++)
                        Image.asset("assets/logo/logo-$i.png"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
