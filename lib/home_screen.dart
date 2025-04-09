import "dart:io";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:image_picker/image_picker.dart";
import "package:portfolio_me/screen_path.dart";

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/icon/logo-icon.png", scale: 12),
        title: Text(
          "Aero Vision",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [Image.asset("assets/icon/menu-02.png", scale: 12)],
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
                    Text(
                      "Welcome to my Portfolio",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Hi I’m",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Robert Junior",
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      "Product",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Designer",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Collaborating with highly skilled individuals, our agency delivers top-quality services.",
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size(double.infinity, 40),
                  ),
                  child: Text(
                    "Hire Me!",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    context.push(
                      ScreenPath.serviceScreen,
                      extra: {
                        "name": "Jimmy",
                        "age": "31",
                        "company": "CMatrix Corporation",
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 40),
                    side: BorderSide(color: Colors.blue),
                  ),
                  label: Text(
                    "Download CV",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
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
