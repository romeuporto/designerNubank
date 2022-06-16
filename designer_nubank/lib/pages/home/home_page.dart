import 'package:designer_nubank/main.dart';
import 'package:designer_nubank/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade800,
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget> [
          MyAppBar()

      ],),

    );
  }
}
