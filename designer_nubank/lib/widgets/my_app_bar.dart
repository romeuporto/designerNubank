import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final bool showMenu;
  final VoidCallback onTap;

  const MyAppBar({Key? key, required this.showMenu, required this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        GestureDetector(
            onTap: onTap,
            child: Container(
          color: Colors.purple.shade800,
            height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Nubank_logo_2021.svg/1200px-Nubank_logo_2021.svg.png',
                  color: Colors.white,
                  height: 35,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Nubank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              Icon(!showMenu ? Icons.expand_more : Icons.expand_less)
            ],
           ),
          )
        )
       ]
      );
  }
}
