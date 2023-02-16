import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:random_color/random_color.dart';

import '../text_view.dart';

/// The content to the displayed in each ChatList item
class ContactItem extends StatelessWidget {
  final RandomColor _randomColor = RandomColor();

  ContactItem({super.key});

  @override
  Widget build(BuildContext context) {
    Color profileColor = _randomColor.randomColor();

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
          left: 16.0,
          right: 16.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: profileColor,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: TextViewMedium(),
            )),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'invite',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
