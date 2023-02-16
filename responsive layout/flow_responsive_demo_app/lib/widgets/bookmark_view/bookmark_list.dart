import 'package:flow_responsive_demo_app/widgets/bookmark_view/bookmark_item.dart';
import 'package:flutter/material.dart';

class BookmarkList extends StatelessWidget {
  const BookmarkList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return BookmarkItem();
      },
    );
  }
}
