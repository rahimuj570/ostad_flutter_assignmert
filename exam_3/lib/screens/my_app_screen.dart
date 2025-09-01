import 'package:exam_3/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MyAppScreen extends StatelessWidget {
  const MyAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Exam 3', home: HomeScreen());
  }
}
