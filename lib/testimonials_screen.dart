import 'package:flutter/material.dart';

class TestimonialsScreen extends StatefulWidget {
  const TestimonialsScreen({super.key});

  @override
  State<TestimonialsScreen> createState() => _TestimonialsScreenState();
}

class _TestimonialsScreenState extends State<TestimonialsScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);

    final List<Map<String, dynamic>> reviewContent = [
      {
        "reviewBody": "1",
        "name": "Savannah Nguyen",
        "workTitle": "President of Sales",
      },
      {
        "reviewBody": "2",
        "name": "Jenny Wilson",
        "workTitle": "Medical Assistant",
      },
      {
        "reviewBody": "3",
        "name": "Esther Howard",
        "workTitle": "Nursing Assistant",
      },
      {
        "reviewBody": "4",
        "name": "Savannah Nguyen",
        "workTitle": "Marketing Coordinator",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Testimonials",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF0077FF),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "The Trust From Clients",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
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
            SizedBox(height: 30),

            //TODO: Container
            SizedBox(
              height: 366,
              child: PageView.builder(
                // itemCount: serviceContent.length,
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return null;

                  // return ServiceCard(
                  //   title: "${serviceContent[index]["title"]}",
                  //   subTitle: "${serviceContent[index]["subTitle"]}",
                  // );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
