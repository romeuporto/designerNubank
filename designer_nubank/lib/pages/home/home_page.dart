import 'package:designer_nubank/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

  class _HomePageState extends State<HomePage> {

   late bool _showMenu;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _showMenu = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade800,
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget> [
          MyAppBar(
            showMenu: _showMenu,
          ),
        ],
      ),
    );
  }
}


