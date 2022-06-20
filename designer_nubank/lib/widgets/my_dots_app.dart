import 'package:flutter/material.dart';

class MyDots extends StatelessWidget {

  final int currenteIndex;
  final double top;

  Color getColor(int index) {
    return index == currenteIndex ? Colors.white : Colors.white38;
  }

  const MyDots({Key? key, required this.currenteIndex, required this.top}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
        child: Row(
            children:[ AnimatedContainer (
            duration: Duration(milliseconds: 300),
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              color: getColor(0),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 6,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              color: getColor(1),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 6,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              color: getColor(2),
              shape: BoxShape.circle,
            ),
          ),
            ]
        )
    );
  }
}
