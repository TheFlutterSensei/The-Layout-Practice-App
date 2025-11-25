import 'package:flutter/material.dart';
import 'package:layout_practice/screens/layout_home_screen.dart';

void main() {
  runApp(const LayoutPractice());
}

class LayoutPractice extends StatelessWidget {
  const LayoutPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout practice',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const LayoutHomeScreen(),
    );
  }
}
