import 'package:flutter/material.dart';

class ExpandedWidget extends StatefulWidget {
  final String text;
  final bool expand;
  const ExpandedWidget({
    super.key,
    this.expand = false,
    required this.text,
  });

  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;
  bool expand = true;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    Animation<double> curve = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(curve)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void didUpdateWidget(ExpandedWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.expand) {
      print('forword');
      expandController.forward();
    } else {
      print('reverse');
      expandController.reverse();
    }
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      axisAlignment: 1.0,
      sizeFactor: animation,
      child: Text(
        widget.text,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

class TileWidget extends StatefulWidget {
  const TileWidget({super.key});

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
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
