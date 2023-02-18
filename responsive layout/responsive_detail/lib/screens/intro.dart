import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black87,
      child: const Text(
        'Intro Screen',
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
