import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimatedPortfolioPage extends StatelessWidget {
  const AnimatedPortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _Header()
                  .animate()
                  .fade(duration: 400.ms)
                  .slideY(begin: -0.3),

              const SizedBox(height: 20),

              const _SocialSection()
                  .animate(delay: 200.ms)
                  .fade()
                  .slideY(begin: 0.3),

              const SizedBox(height: 20),

              const _AboutCard()
                  .animate(delay: 300.ms)
                  .fade()
                  .slideX(begin: -0.2),

              const SizedBox(height: 20),

              const _SkillsSection()
                  .animate(delay: 400.ms)
                  .fade()
                  .scale(),

              const SizedBox(height: 20),

              const _ProjectsSection()
                  .animate(delay: 500.ms)
                  .fade()
                  .slideY(begin: 0.2),
            ],
          ),
        ),
      ),
    );
  }
}


class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(
            "https://via.placeholder.com/150",
          ),
        )
            .animate(onPlay: (c) => c.repeat(reverse: true))
            .scale(duration: 2.seconds, begin: const Offset(1, 1), end: const Offset(1.05, 1.05)),

        const SizedBox(width: 16),

        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rahul Kushwaha",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SocialSection extends StatelessWidget {
  const _SocialSection();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _button("GitHub"),
        const SizedBox(width: 10),
        _button("LinkedIn"),
      ],
    );
  }

  Widget _button(String text) {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 45,
          decoration: BoxDecoration(
            color: const Color(0xFF1E293B),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(text, style: const TextStyle(color: Colors.white)),
          ),
        ),
      )
          .animate()
          .scale(duration: 150.ms)
          .then()
          .shimmer(duration: 800.ms),
    );
  }
}

class _AboutCard extends StatelessWidget {
  const _AboutCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Text(
        "Flutter developer with 5+ years experience building scalable apps using clean architecture.",
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}

class _SkillsSection extends StatelessWidget {
  const _SkillsSection();

  @override
  Widget build(BuildContext context) {
    final skills = ["Flutter", "Dart", "Firebase", "API", "Riverpod"];

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: skills.map((skill) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFF1E293B),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(skill, style: const TextStyle(color: Colors.white)),
        )
            .animate()
            .fade(duration: 300.ms)
            .scale(delay: 100.ms);
      }).toList(),
    );
  }
}

class _ProjectsSection extends StatelessWidget {
  const _ProjectsSection();

  @override
  Widget build(BuildContext context) {
    final projects = [
      "Streaming App",
      "E-Commerce App",
      "Ride Sharing App"
    ];

    return Column(
      children: projects.map((project) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF1E293B),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                const Icon(Icons.mobile_friendly, color: Colors.white),
                const SizedBox(width: 12),
                Text(project, style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
        )
            .animate()
            .fade(duration: 400.ms)
            .slideX(begin: 0.2)
            .then()
            .scale(duration: 150.ms);
      }).toList(),
    );
  }
}