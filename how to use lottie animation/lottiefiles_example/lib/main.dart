import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LottieFiles Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: Colors.yellow[100],
      ),
      home: const MyHomePage(title: 'LottieFiles Demo Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showCelebration = false;

  void _handleCelebrationClick() {
    setState(() {
      _showCelebration = !_showCelebration;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 550,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: NetworkImage(
                  'https://avatars.githubusercontent.com/u/63374020?v=4'),
              fit: BoxFit.cover,
            ),
            color: Colors.brown.shade500,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Visibility(
            visible: _showCelebration,
            child: Lottie.asset('assets/animations/celebration.json'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _handleCelebrationClick,
        tooltip: 'Press to show celebration',
        child: Icon(
          _showCelebration ? Icons.celebration : Icons.celebration_outlined,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
