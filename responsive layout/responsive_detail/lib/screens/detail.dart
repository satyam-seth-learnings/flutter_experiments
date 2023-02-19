import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.deepPurpleAccent,
      child: ElevatedButton(
        onPressed: () => widget.onPressed(),
        child: const Text('Close'),
      ),
    );
  }
}
