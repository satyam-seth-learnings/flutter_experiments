import 'package:flutter/material.dart';

import 'chat_item.dart';

class ChatList extends StatelessWidget {
  final Color profileIconColor;
  ChatList(this.profileIconColor);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      reverse: true,
      physics: const BouncingScrollPhysics(),
      itemCount: 30,
      itemBuilder: (context, index) {
        return ChatItem(profileIconColor);
      },
    );
  }
}
