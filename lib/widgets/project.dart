
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection();

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        "title": "E-Commerce App",
        "desc": "Shopping app with cart, payment integration",
      },
      {
        "title": "Streaming App",
        "desc": "Video streaming with clean architecture",
      },
      {
        "title": "Ride Sharing App",
        "desc": "Real-time location tracking system",
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Projects",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Column(
          children: projects.map((project) {
            return Card(
              margin: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                title: Text(project["title"]!),
                subtitle: Text(project["desc"]!),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}