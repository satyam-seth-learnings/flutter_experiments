import 'package:flutter/material.dart';

class ControllersInTheListView extends StatelessWidget {
  const ControllersInTheListView({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController ctr = ScrollController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Using controllers in the list view"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Scroll to item 10"),
        onPressed: () {
          ctr.animateTo(
            10 * 100,
            duration: const Duration(seconds: 1),
            curve: Curves.ease,
          );
        },
      ),
      body: ListView.builder(
        controller: ctr,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 100,
            child: ListTile(
              title: Text("Item $index"),
            ),
          );
        },
      ),
    );
  }
}
