import 'package:flutter/material.dart';

import 'expanded_widget.dart';

class Tile extends StatefulWidget {
  const Tile({super.key});

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  bool expand = false;

  Widget _heading() {
    return const Text(
      'this is heading',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _body() {
    return ExpandedWidget(
      expand: expand,
      text: 'This is body',
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        expand = !expand;
        print(' state change -> $expand');
      }),
      child: Container(
        color: Colors.grey,
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _heading(),
            const SizedBox(height: 5),
            _body(),
          ],
        ),
      ),
    );
  }
}
