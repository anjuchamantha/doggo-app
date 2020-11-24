import 'dart:ui';

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/theme/colors.dart';
import '../../pages/home.dart';
import '../../pages/search.dart';
import '../../pages/create.dart';
import '../../pages/profile.dart';
import '../../pages/settings.dart';
import '../../theme/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FloatingTabBar extends StatefulWidget {
  FloatingTabBar({Key key}) : super(key: key);
  @override
  _FloatingTabBarState createState() => _FloatingTabBarState();
}

class _FloatingTabBarState extends State<FloatingTabBar> {
  int _selectedTab = 0;
  Color _selectedColor = AppColors.gold;
  final _pageOptions = [
    HomePage(),
    SearchPage(),
    CreatePage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Stack(
            children: <Widget>[
              _pageOptions[_selectedTab],
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                    _buildFloatingBar(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
  
  Widget _buildFloatingBar() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.92,
      height: MediaQuery.of(context).size.height * 0.095,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Color.fromRGBO(255, 255, 255, 0.2),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.9, sigmaY: 0.9),
            child: InkWell(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                  child: Row(
                    children: <Widget>[
                      ButtonBar(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.home),
                              color: _selectedTab==0?_selectedColor:Colors.white,
                              onPressed: () {
                                setState(() {
                                  _selectedTab = 0;
                                });
                              },
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              //onPressed: REFRESH,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.search),
                              color: _selectedTab==1?_selectedColor:Colors.white,
                              onPressed: () {
                                setState(() {
                                  _selectedTab = 1;
                                });
                              },
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              //onPressed: REFRESH,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.bell),
                              color: _selectedTab==2?_selectedColor:Colors.white,
                              onPressed: () {
                                setState(() {
                                  _selectedTab = 2;
                                });
                              },
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              //onPressed: REFRESH,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: IconButton(
                              icon: FaIcon(FontAwesomeIcons.user),
                              color: _selectedTab==3?_selectedColor:Colors.white,
                              onPressed: () {
                                setState(() {
                                  _selectedTab = 3;
                                });
                              },
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              //onPressed: REFRESH,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        
        
      ),
    );
  }
}
