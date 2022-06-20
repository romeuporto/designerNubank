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
  int _currentIndex = 0;
  double _yPosition = 0;

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
    if (_yPosition == null){
      _yPosition = _screenHeight * .24;
    }
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
            top: _yPosition, //!_showMenu ? _screenHeight * .24 : _screenHeight * .75,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            onPanUpdate: (details) {
              double positionBottomLimit = _screenHeight * .75;
              double positionTopLimit = _screenHeight * .24;
              setState(() {
                _yPosition += details.delta.dy;

                _yPosition = _yPosition < positionTopLimit
                    ? positionTopLimit
                    : _yPosition;

                _yPosition = _yPosition > positionBottomLimit
                    ? positionBottomLimit
                    : _yPosition;

                if (_yPosition == positionBottomLimit){
                  _showMenu = true;
                }else if(_yPosition == positionBottomLimit){
                  _showMenu = false;
                }
              });
            },
          ),
          MyDots(
            top: _screenHeight * .70,
            currenteIndex: _currentIndex,
          )
        ],
      ),
    );
  }
}
