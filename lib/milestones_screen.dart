import 'package:flutter/material.dart';
import 'package:portfolio_me/customWidget/achievement_card.dart';

class MilestonesScreen extends StatelessWidget {
  const MilestonesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0077FF),
      appBar: AppBar(
        title: Text(
          "Our Milestones".toUpperCase(),
          style: TextStyle(
            letterSpacing: 2.5,
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF0077FF),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.5),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 153,
                child: Text(
                  "What sets our studio apart for your projects?",
                  style: TextStyle(
                    height: 1.0,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // SizedBox(height: 30),
              AchievementCard(
                title: "8300+",
                subtitle: "Figma ipsum component variant main layer. Hand.",
              ),
              SizedBox(height: 30),
              AchievementCard(
                title: "100%",
                subtitle: "Figma ipsum component variant main layer. Union.",
              ),
              SizedBox(height: 30),
              AchievementCard(
                title: "3.5K",
                subtitle: "Figma ipsum component variant main layer.",
              ),
              SizedBox(height: 30),
              AchievementCard(
                title: "240+",
                subtitle: "Figma ipsum component variant main layer.",
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
