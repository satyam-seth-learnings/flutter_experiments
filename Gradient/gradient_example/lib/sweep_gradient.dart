import 'package:flutter/material.dart';

class SweepGradientPage extends StatelessWidget {
  const SweepGradientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sweep Gradient'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.9,
          // Below is the code for Sweep Gradient.
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const SweepGradient(
              colors: [
                Colors.red,
                Colors.yellow,
                Colors.blue,
                Colors.green,
                Colors.red,
              ],
              stops: <double>[0.0, 0.25, 0.5, 0.75, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
      ),
    );
  }
}
