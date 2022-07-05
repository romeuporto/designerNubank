import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key? key, required this.top, required this.showMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: 0,
        right: 0,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: 200),
          opacity: showMenu ? 1 : 0,
          child: Container(
            color: Colors.purple.shade800,
            height: MediaQuery.of(context).size.height * 0.55,
            child: Column(
              children: [
                Image.network('https://cdn-0.imagensemoldes.com.br/wp-content/uploads/2020/08/QR-Code-PNG-1024x1024.png',
                  height: 80,
                  color: Colors.white,


                ),
              ],
            ),
          ),
        ));
  }
}
