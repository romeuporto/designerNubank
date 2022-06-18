import 'package:flutter/material.dart';

import 'card_app.dart';

class PageVeiwApp extends StatelessWidget {

  final double top;

  const PageVeiwApp({Key? key, required this.top}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        height: MediaQuery.of(context).size.height * .45,
        left: 9,
        right: 9,
        child: PageView(
          physics: BouncingScrollPhysics(),
          children: [
            CardApp(),
            CardApp(),
            CardApp(),
          ],
        )
    );
  }
}
