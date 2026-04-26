import 'package:flutter/material.dart';
import 'package:rahulkushwaha_com_np/portfolio_screen.dart';
import 'package:rahulkushwaha_com_np/widgets/project.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: AnimatedPortfolioPage(),
    );
  }
}

