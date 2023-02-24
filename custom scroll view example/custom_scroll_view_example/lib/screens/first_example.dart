import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/about_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/tab_widget.dart';

class FirstExample extends StatelessWidget {
  const FirstExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                ),
              ),
              backgroundColor: Colors.black,
              elevation: 0,
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.help_outline_rounded,
                    color: Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SliverToBoxAdapter(
              child: HeaderWidget(),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: TabWidget(),
            ),
            const SliverToBoxAdapter(
              child: AboutWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
