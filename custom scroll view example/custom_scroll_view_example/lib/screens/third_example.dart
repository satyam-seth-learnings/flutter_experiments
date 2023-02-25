import 'package:flutter/material.dart';

class ThirdExample extends StatelessWidget {
  const ThirdExample({super.key});

  SliverAppBar _appBar() {
    return SliverAppBar(
      expandedHeight: 300.0,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          "assets/jetpack_compose.png",
          fit: BoxFit.cover,
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {},
      ),
    );
  }

  List<Widget> _buildList(int n) {
    List<Widget> listItems = [];

    for (int i = 1; i <= n; i++) {
      listItems.add(
        Card(
          color: Colors.black87,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Card $i',
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: CustomScrollView(
        slivers: [
          _appBar(),
          SliverList(
            delegate: SliverChildListDelegate(_buildList(20)),
          ),
        ],
      ),
    );
  }
}
