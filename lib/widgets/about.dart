import 'package:flutter/cupertino.dart';

class AboutSection extends StatelessWidget {
  const AboutSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Me",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          "I am a Flutter developer with 5+ years of experience building scalable mobile applications using clean architecture and modern state management.",
        ),
      ],
    );
  }
}