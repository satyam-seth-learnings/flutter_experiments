import 'package:flutter/material.dart';

import 'first_example.dart';
import 'second_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _firstExampleButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const FirstExample(),
            ),
          );
        },
        child: const Text('First Example'),
      ),
    );
  }

  Widget _secondExampleButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SecondExample(),
            ),
          );
        },
        child: const Text('Second Example'),
      ),
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
              _secondExampleButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
