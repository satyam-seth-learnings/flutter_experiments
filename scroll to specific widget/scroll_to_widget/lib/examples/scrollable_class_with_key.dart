import 'package:flutter/material.dart';

class ScrollableClassWithKey extends StatelessWidget {
  const ScrollableClassWithKey({super.key});

  @override
  Widget build(BuildContext context) {
    var key1 = GlobalKey();
    var key2 = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Using scrollable class with key"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              key: key1,
              color: Colors.yellow,
              height: MediaQuery.of(context).size.height - kToolbarHeight,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      key2.currentContext!,
                      duration: const Duration(seconds: 1),
                    );
                  },
                  child: const Text("Scroll down"),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              key: key2,
              height: MediaQuery.of(context).size.height - kToolbarHeight,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      key1.currentContext!,
                      duration: const Duration(seconds: 1),
                    );
                  },
                  child: const Text("Scroll up"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
