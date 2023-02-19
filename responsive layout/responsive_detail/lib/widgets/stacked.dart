import 'package:flutter/cupertino.dart';

import '../screens/detail.dart';

class StackedWidget extends StatefulWidget {
  const StackedWidget(
      {super.key,
      required this.onPressed,
      required this.isOpened,
      required this.backgroundWidget});

  final bool isOpened;
  final VoidCallback onPressed;
  final Widget backgroundWidget;

  @override
  State<StackedWidget> createState() => _StackedWidgetState();
}

class _StackedWidgetState extends State<StackedWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          widget.backgroundWidget,
          Visibility(
            visible: widget.isOpened,
            child: DetailScreen(onPressed: widget.onPressed),
          )
        ],
      ),
    ); //SizedBox
  }
}
