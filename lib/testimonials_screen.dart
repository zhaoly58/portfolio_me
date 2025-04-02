import 'package:flutter/material.dart';
import 'package:portfolio_me/customWidget/review_card.dart';

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
        "photo": "people1.png",
        "reviewBody":
            "Lorem ipsum dolor sit amet consectetur. Nibh porttitor aliquet tellus eget egestas. Enim ultrices dictumst tortor in eget neque vestibulum potenti tempus",
        "name": "Savannah Nguyen",
        "workTitle": "President of Sales",
      },
      {
        "photo": "people2.png",
        "reviewBody": "2",
        "name": "Jenny Wilson",
        "workTitle": "Medical Assistant",
      },
      {
        "photo": "people3.png",
        "reviewBody": "3",
        "name": "Esther Howard",
        "workTitle": "Nursing Assistant",
      },
      {
        "photo": "people4.png",
        "reviewBody": "4",
        "name": "Cameron Williamson",
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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
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

              SizedBox(
                height: 500,
                child: PageView.builder(
                  itemCount: reviewContent.length,
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ReviewCard(
                      photo: "${reviewContent[index]["photo"]}",
                      reviewBody: "${reviewContent[index]["reviewBody"]}",
                      name: "${reviewContent[index]["name"]}",
                      workTitle: "${reviewContent[index]["workTitle"]}",
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
