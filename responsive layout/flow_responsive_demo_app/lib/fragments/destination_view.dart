import 'package:flutter/material.dart';

import '../model/destination.dart';
import 'bookmark_view.dart';
import 'contact_view.dart';
import 'people_view.dart';

class DestinationView extends StatelessWidget {
  final Destination destination;

  const DestinationView(this.destination, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: destination.id == 0
            ? const PeopleView(
                isNotInChatMode: true,
              )
            : destination.id == 1
                ? const BookmarkView()
                : const ContactView(),
      ),
    );
  }
}
