import 'package:flutter/material.dart';

import '../widgets/people_view/people_list.dart';

class PeopleView extends StatelessWidget {
  final bool isNotInChatMode;

  const PeopleView({super.key, required this.isNotInChatMode});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: PeopleList(isNotInChatMode: isNotInChatMode),
    );
  }
}
