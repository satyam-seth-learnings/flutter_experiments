import 'package:flutter/material.dart';

class RadialGradientPage extends StatelessWidget {
  const RadialGradientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radial Gradient'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.9,
          // Below is the code for Radial Gradient.
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const RadialGradient(
              colors: [Colors.red, Colors.yellow],
              radius: 0.75,
            ),
          ),
        ),
      ),
    );
  }
}
