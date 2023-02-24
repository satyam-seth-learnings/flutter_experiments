import 'package:flutter/material.dart';

import 'first_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  ElevatedButton _firstExampleButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const FirstExample(),
          ),
        );
      },
      child: const Text('First Example'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _firstExampleButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
