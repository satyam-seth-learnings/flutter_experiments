import 'package:flutter/material.dart';
import 'package:responsive_detail/screens/intro.dart';
import 'package:responsive_detail/screens/tab.dart';
import 'package:responsive_detail/widgets/stacked.dart';

class ResponsiveWidget extends StatefulWidget {
  const ResponsiveWidget({super.key});

  @override
  State<StatefulWidget> createState() => _ResponsiveWidgetState();
}

class _ResponsiveWidgetState extends State<ResponsiveWidget> {
  bool isOpened = false;
  void onPressed() {
    if (isOpened) {
      print("Close");
    } else {
      print('Open');
    }

    isOpened = isOpened ? false : true;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return Row(children: [
            Expanded(
              child: TabbedScreen(onPressed: onPressed),
            ),
            StackedWidget(
              backgroundWidget: const Expanded(
                child: IntroScreen(),
              ),
              isOpened: isOpened,
              onPressed: onPressed,
            )
          ]);
        } else {
          return StackedWidget(
            backgroundWidget: Expanded(
              child: TabbedScreen(onPressed: onPressed),
            ),
            isOpened: isOpened,
            onPressed: onPressed,
          );
        }
      }),
    );
  }
}
