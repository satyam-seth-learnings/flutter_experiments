import 'package:flutter/material.dart';

import '../res/custom_colors.dart';
import '../widgets/chat_view/chat_list.dart';
import '../widgets/send_widget.dart';
import 'people_view.dart';

class ChatViewLarge extends StatelessWidget {
  final Color profileIconColor;
  const ChatViewLarge(this.profileIconColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 100,
                  color: CustomColors.blue_gray_dark,
                  child: const SafeArea(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: BackButton(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                PeopleView(isNotInChatMode: false),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(child: ChatList(profileIconColor)),
                SendWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
