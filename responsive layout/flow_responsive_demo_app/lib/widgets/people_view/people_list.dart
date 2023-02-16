import 'package:flutter/material.dart';

import 'people_item.dart';

class PeopleList extends StatelessWidget {
  final bool isNotInChatMode;

  const PeopleList({super.key, required this.isNotInChatMode});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: 30,
      itemBuilder: (context, index) {
        return PeopleItem(
          isNotInChatMode: isNotInChatMode,
        );
      },
    );
  }
}
