
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection();

  final List<String> skills = const [
    "Flutter",
    "Dart",
    "Firebase",
    "REST APIs",
    "Riverpod",
    "Clean Architecture",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Skills",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: skills
              .map((skill) => Chip(label: Text(skill)))
              .toList(),
        ),
      ],
    );
  }
}