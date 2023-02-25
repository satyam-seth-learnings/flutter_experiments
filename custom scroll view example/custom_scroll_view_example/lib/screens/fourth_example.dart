import 'package:flutter/material.dart';

import '../widgets/image_widget.dart';

class FourthExample extends StatelessWidget {
  const FourthExample({super.key});

  // SliverAppBar _appBar() {
  //   return SliverAppBar(
  //     expandedHeight: 300.0,
  //     flexibleSpace: FlexibleSpaceBar(
  //       background: Image.asset(
  //         "assets/jetpack_compose.png",
  //         fit: BoxFit.cover,
  //       ),
  //     ),
  //     leading: IconButton(
  //       icon: const Icon(
  //         Icons.menu,
  //         color: Colors.white,
  //         size: 30,
  //       ),
  //       onPressed: () {},
  //     ),
  //   );
  // }

  // List<Widget> _buildList(int n) {
  //   List<Widget> listItems = [];

  //   for (int i = 1; i <= n; i++) {
  //     listItems.add(
  //       Card(
  //         color: Colors.black87,
  //         child: Padding(
  //           padding: const EdgeInsets.all(8.0),
  //           child: Center(
  //             child: Text(
  //               'Card $i',
  //               style: const TextStyle(
  //                 color: Colors.white70,
  //                 fontSize: 30,
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     );
  //   }

  //   return listItems;
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: Colors.grey,
  //     body: CustomScrollView(
  //       slivers: [
  //         _appBar(),
  //         SliverList(
  //           delegate: SliverChildListDelegate(_buildList(20)),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverPersistentHeader(
              delegate: CustomSliverAppBarDelegate(expandedHeight: 200),
              pinned: true,
            ),
            buildImages(),
          ],
        ),
      );

  Widget buildImages() => SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        delegate: SliverChildBuilderDelegate(
          (context, index) => ImageWidget(index: index),
          childCount: 20,
        ),
      );
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const CustomSliverAppBarDelegate({
    required this.expandedHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    const size = 60;
    final top = expandedHeight - shrinkOffset - size / 2;

    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        buildBackground(shrinkOffset),
        buildAppBar(shrinkOffset),
        Positioned(
          top: top,
          left: 20,
          right: 20,
          child: buildFloating(shrinkOffset),
        ),
      ],
    );
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  Widget buildAppBar(double shrinkOffset) => Opacity(
        opacity: appear(shrinkOffset),
        child: AppBar(
          title: const Text('Fourth Example'),
          centerTitle: true,
        ),
      );

  Widget buildBackground(double shrinkOffset) => Opacity(
        opacity: disappear(shrinkOffset),
        child: Image.network(
          'https://source.unsplash.com/random?mono+dark',
          fit: BoxFit.cover,
        ),
      );

  Widget buildFloating(double shrinkOffset) => Opacity(
        opacity: disappear(shrinkOffset),
        child: Card(
          child: Row(
            children: [
              Expanded(child: buildButton(text: 'Share', icon: Icons.share)),
              Expanded(child: buildButton(text: 'Like', icon: Icons.thumb_up)),
            ],
          ),
        ),
      );

  Widget buildButton({
    required String text,
    required IconData icon,
  }) =>
      TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            const SizedBox(width: 12),
            Text(text, style: const TextStyle(fontSize: 20)),
          ],
        ),
        onPressed: () {},
      );

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
