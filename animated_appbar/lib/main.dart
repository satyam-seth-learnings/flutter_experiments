import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ChangingAppBar(),
    );
  }
}

class ChangingAppBar extends StatefulWidget {
  const ChangingAppBar({Key? key}) : super(key: key);

  @override
  ChangingAppBarState createState() => ChangingAppBarState();
}

class ChangingAppBarState extends State<ChangingAppBar> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _scrollPosition == 0
          ? AppBar(
              title: const Text('1st AppBar'),
              backgroundColor: Colors.red,
            )
          : AppBar(
              title: const Text('2nd AppBar'),
              backgroundColor: Colors.blue,
            ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item: $index'),
          );
        },
      ),
    );
  }
}
