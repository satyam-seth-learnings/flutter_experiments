import 'package:flutter/material.dart';

class TabbedScreen extends StatefulWidget {
  const TabbedScreen({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  State<TabbedScreen> createState() => _TabbedScreenState();
}

class _TabbedScreenState extends State<TabbedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: const Text('Open'),
      ),
    ));
  }
}
