import 'package:flutter/material.dart';

import 'first_example.dart';
import 'second_example.dart';
import 'third_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _exampleButton({
    required BuildContext context,
    required String title,
    required WidgetBuilder builder,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: builder,
            ),
          );
        },
        child: Text(title),
      ),
    );
  }

  Widget _firstExampleButton(BuildContext context) {
    return _exampleButton(
      context: context,
      title: 'First Example',
      builder: (context) => const FirstExample(),
    );
  }

  Widget _secondExampleButton(BuildContext context) {
    return _exampleButton(
      context: context,
      title: 'Second Example',
      builder: (context) => const SecondExample(),
    );
  }

  Widget _thirdExampleButton(BuildContext context) {
    return _exampleButton(
      context: context,
      title: 'Third Example',
      builder: (context) => const ThirdExample(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _firstExampleButton(context),
              _secondExampleButton(context),
              _thirdExampleButton(context),
            ],
          ),
        ),
      ),
    );
  }
}
