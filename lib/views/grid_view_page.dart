import 'package:flutter/material.dart';
import 'dart:math' as math;

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  int _columnsCount = 2;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "${_scrollController.hasClients ? _scrollController.position.pixels.toString() : 0} pixels"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              if (_columnsCount < 3) {
                setState(() {
                  _columnsCount++;
                });
              }
            },
            child: Icon(
              Icons.grid_on,
              color: Colors.white,
            ),
            heroTag: "grid_on",
          ),
          SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            onPressed: () {
              if (_columnsCount > 2) {
                setState(() {
                  _columnsCount--;
                });
              }
            },
            child: Icon(
              Icons.grid_off,
              color: Colors.white,
            ),
            heroTag: "grid_off",
          ),
          SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            onPressed: () {
              _scrollController.animateTo(
                0,
                duration: Duration(milliseconds: 600),
                curve: Curves.easeInQuart,
              );
            },
            child: Icon(
              Icons.arrow_upward,
              color: Colors.white,
            ),
            heroTag: "arrow_upward",
          ),
        ],
      ),
      body: GridView.builder(
          controller: _scrollController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _columnsCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            final gridItemColor =
                Color((math.Random(index).nextDouble() * 0x00FFFFFF).toInt())
                    .withOpacity(1);
            final gridItemBrightness = gridItemColor.computeLuminance();

            return Stack(
              children: [
                Container(
                  color: gridItemColor,
                  child: Center(
                    child: Text(
                      index.toString(),
                      style: TextStyle(
                        fontSize: 40,
                        color: gridItemBrightness > 0.5
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Text(
                    gridItemColor
                        .toString()
                        .toUpperCase()
                        .substring(6, 16)
                        .replaceAll('0X', '#'),
                    style: TextStyle(
                      fontSize: 18,
                      color: gridItemBrightness > 0.5
                          ? Colors.black
                          : Colors.white,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
