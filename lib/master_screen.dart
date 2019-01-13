import 'package:final_app/colors_screen.dart';
import 'package:final_app/plan_screen.dart';
import 'package:flutter/material.dart';

class MasterScreen extends StatefulWidget {
  @override
  _MasterScreenState createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget screen;
    switch (_pageIndex) {
      case 0:
        screen = PlanScreen();
        break;
      case 1:
        screen = ColorsScreen();
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Materially Better'),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: screen,
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment,
            ),
            title: Text(
              'Plan',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.style,
            ),
            title: Text(
              'Colors',
            ),
          ),
        ],
        onTap: (int tabIndex) {
          setState(() {
            _pageIndex = tabIndex;
          });
        },
      ),
    );
  }
}
