import 'package:flutter/material.dart';
import 'package:navigation_rail_medium/config/tab_config.dart';
import 'package:navigation_rail_medium/tab_views/tab_one.dart';
import 'package:navigation_rail_medium/tab_views/tab_three.dart';
import 'package:navigation_rail_medium/tab_views/tab_two.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            bottom: false,
            child: constraints.maxWidth > 600
                ? Row(
                    children: <Widget>[
                      NavigationRail(
                          labelType: NavigationRailLabelType.all,
                          onDestinationSelected: (value) => _changePage(value),
                          selectedIconTheme: IconThemeData(color: Colors.red),
                          unselectedIconTheme:
                              IconThemeData(color: Colors.black),
                          destinations: List.generate(
                            tabData.length,
                            (index) => NavigationRailDestination(
                              icon: Icon(tabData[index]["icon"]),
                              label: Text(tabData[index]["label"]),
                            ),
                          ),
                          selectedIndex: _selectedIndex),
                      Expanded(child: _renderChild(_selectedIndex)),
                    ],
                  )
                : Column(
                    children: <Widget>[
                      Expanded(child: _renderChild(_selectedIndex)),
                      BottomNavigationBar(
                          currentIndex: _selectedIndex,
                          selectedIconTheme: IconThemeData(color: Colors.red),
                          onTap: (value) => _changePage(value),
                          items: List.generate(
                            tabData.length,
                            (index) => BottomNavigationBarItem(
                              icon: Icon(tabData[index]["icon"]),
                              title: Text(tabData[index]["label"]),
                            ),
                          ))
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  Widget _renderChild(index) {
    switch (index) {
      case 0:
        return TabOne();
        break;
      case 1:
        return TabTwo();
        break;
      case 2:
        return TabThree();
        break;
      default:
        return Container(
          child: Text("Something feels fishy! :P"),
        );
    }
  }

  _changePage(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
