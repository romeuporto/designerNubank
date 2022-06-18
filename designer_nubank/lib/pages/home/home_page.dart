import 'package:designer_nubank/widgets/my_app_bar.dart';
import 'package:designer_nubank/widgets/my_dots_app.dart';
import 'package:designer_nubank/widgets/page_view_app.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu = true;
  int _currentIndex = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.purple.shade800,
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          PageVeiwApp(
            top: _screenHeight * .24,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          Positioned(
              top: _screenHeight * .70,
              child: MyDots(
                currenteIndex: _currentIndex,
              )
          )
        ],
      ),
    );
  }
}
