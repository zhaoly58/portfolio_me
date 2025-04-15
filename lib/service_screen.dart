import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_me/customWidget/service_card.dart';

class ServiceScreen extends StatefulWidget {
  final Map? user;
  const ServiceScreen({super.key, this.user});

  @override
  State<ServiceScreen> createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> serviceContent = [
      {
        "title": "1. Website / App Design UX / UI Design",
        "subTitle":
            "Creating Engaging Digital Experiences for Websites and Apps through UX/UI Design",
      },
      {
        "title": "2. Strategic Marketing and Creative Content",
        "subTitle":
            "Elevating Brands and Engagement through Strategic Marketing and Creative Content",
      },
      {
        "title": "3. Multivendor eCommerce Website Solutions",
        "subTitle": "Multivendor eCommerce Website Solutions",
      },
    ];

    // print(widget.user);
    Map? userData = widget.user;
    final PageController controller = PageController(initialPage: 0);

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
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_circle_left_sharp),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
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
                  style: TextStyle(fontSize: 18, letterSpacing: 1.5),
                ),
                // Text("${userData["name"]}"),
                // Text("${userData["age"]}"),
                // Text("${userData["company"]}"),
                SizedBox(height: 25),
                //Image.asset("assets/icon/navArrow.png", scale: 10),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    controller.previousPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.linear,
                    );
                  },
                  icon: Icon(Icons.arrow_back_sharp),
                ),
                IconButton(
                  onPressed: () {
                    controller.nextPage(
                      duration: Duration(milliseconds: 200),
                      curve: Curves.linear,
                    );
                  },
                  icon: Icon(Icons.arrow_forward_sharp),
                ),
              ],
            ),
          ),

          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: SizedBox(
              height: 366,
              child: ListView.separated(
                itemCount: serviceContent.length,
                controller: controller,
                // reverse: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ServiceCard(
                    title: "${serviceContent[index]["title"]}",
                    subTitle: "${serviceContent[index]["subTitle"]}",
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
