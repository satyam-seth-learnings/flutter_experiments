import 'package:flutter/material.dart';

import 'examples/controllers_in_the_list_view.dart';
import 'examples/scrollable_class_with_key.dart';
import 'examples/scrollable_positioned_list_package.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Scroll to widget demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'How to scroll to a Specific Widget',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScrollableClassWithKey(),
                  ),
                );
              },
              child: const Text('Using scrollable class with key'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ControllersInTheListView(),
                  ),
                );
              },
              child: const Text('Using controllers in the list view'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ScrollablePositionedListPackage(),
                  ),
                );
              },
              child: const Text('Using scrollable_positioned_list Package'),
            ),
          ],
        ),
      ),
    );
  }
}
