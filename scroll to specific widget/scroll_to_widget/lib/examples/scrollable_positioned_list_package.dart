import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScrollablePositionedListPackage extends StatelessWidget {
  const ScrollablePositionedListPackage({super.key});

  @override
  Widget build(BuildContext context) {
    ItemScrollController ctr = ItemScrollController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Using scrollable_positioned_list Package"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Scroll Item 55"),
        onPressed: () {
          ctr.scrollTo(
            index: 55,
            duration: const Duration(seconds: 2),
            curve: Curves.ease,
          );
        },
      ),
      body: ScrollablePositionedList.builder(
          itemScrollController: ctr,
          itemCount: 100,
          itemBuilder: (context, index) {
            return ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 50, maxHeight: 200),
              child: Container(
                color: Color.fromARGB(
                  255,
                  Random().nextInt(255),
                  Random().nextInt(255),
                  Random().nextInt(255),
                ),
                height: 100.0 * index * 0.1,
                child: ListTile(
                  title: Text(
                    "Item $index",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
