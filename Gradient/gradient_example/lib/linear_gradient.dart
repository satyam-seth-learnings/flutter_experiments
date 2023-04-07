import 'package:flutter/material.dart';

class LinearGradientPage extends StatelessWidget {
  const LinearGradientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linear Gradient'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.9,
          // Below is the code for Linear Gradient.
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [Colors.purple, Colors.blue],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              // tileMode: TileMode.repeated,
            ),
          ),
        ),
      ),
    );
  }
}
