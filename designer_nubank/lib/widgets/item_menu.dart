import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenu({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.7, color: Colors.white54),
          top: BorderSide(width: 0.7, color: Colors.white54),
        ),
      ),
      child: RaisedButton(
        color: Colors.purple.shade800,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Icon(icon),
              SizedBox(
                width: 30,
              ),
              Text(text, style: TextStyle(fontSize: 14))
            ]),
            Icon(
              Icons.chevron_right,
              size: 16,
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
