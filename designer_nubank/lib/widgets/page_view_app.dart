import 'package:flutter/material.dart';

import 'card_app.dart';

class PageVeiwApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  const PageVeiwApp(
      {Key? key, required this.top, required this.onChanged, required this.onPanUpdate, required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * .45,
      left: 9,
      right: 9,
      child: GestureDetector(
          onPanUpdate: onPanUpdate,
          child: PageView(
            onPageChanged: onChanged,
            physics: showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
            children: [
              CardApp(),
              CardApp(),
              CardApp(),
            ],
          )),
    );
  }
}
