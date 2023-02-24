import 'package:flutter/material.dart';
import 'package:image_gallery/pages/album.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Choose Option'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print('Pressed on Album');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AlbumPage()),
                  );
                },
                child: const Text('Album'),
              )
            ],
          ),
        ));
  }
}
