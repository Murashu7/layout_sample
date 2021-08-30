import 'package:flutter/material.dart';
import 'package:layout_sample/views/grid_view_page.dart';
import 'package:layout_sample/views/sliver_app_bar_page.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 10,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const GridViewPage();
                    },
                  ),
                );
              },
              child: const Text("GridView"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 10,
            ),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SliverAppBarPage();
                    },
                  ),
                );
              },
              child: const Text("SliverAppBarPage"),
            ),
          ),
        ],
      ),
    );
  }
}
