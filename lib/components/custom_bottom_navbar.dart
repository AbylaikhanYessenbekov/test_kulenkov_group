import 'package:flutter/material.dart';

import '../constants.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: kAppBarColor,
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      // backgroundColor: Colors.lightBlueAccent,
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 35.0,
          ),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/searchJobs');
            },
            child: Icon(
              Icons.search,
              size: 35.0,
            ),
          ),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/blog');
            },
            child: Icon(
              Icons.add,
              size: 35.0,
            ),
          ),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            size: 35.0,
          ),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            size: 35.0,
          ),
          title: Text(''),
        ),
      ],
    );
  }
}
