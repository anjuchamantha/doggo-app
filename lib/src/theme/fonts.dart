import 'package:flutter/material.dart';

class AppFonts{
  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFFFFFF);
  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);

  static const TextStyle userName = TextStyle( // h4 -> display1
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w600,
    fontSize: 12,
    letterSpacing: 0.4,
    height: 0.9,
    color: notWhite,
  );
  static const TextStyle cardDescription = TextStyle( // h4 -> display1
    fontFamily: 'Nunito',
    fontWeight: FontWeight.normal,
    fontSize: 12,
    letterSpacing: 0.4,
    height: 0.9,
    color: nearlyWhite,
  );
  static const TextStyle userNameProfile = TextStyle( // h4 -> display1
    fontFamily: 'Nunito',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.4,
    height: 0.9,
    color: Colors.white,
  );
  static const TextStyle userDescription = TextStyle( // h4 -> display1
    fontFamily: 'Nunito',
    fontWeight: FontWeight.normal,
    fontSize: 13,
    letterSpacing: 0.4,
    height: 0.9,
    color: Colors.white60,
  );
  static const TextStyle numberFollowers = TextStyle( // h4 -> display1
    fontFamily: 'Nunito',
    fontWeight: FontWeight.normal,
    fontSize: 18,
    letterSpacing: 0.4,
    height: 0.9,
    color: Colors.white,
  );
  static const TextStyle nameFollowers = TextStyle( // h4 -> display1
    fontFamily: 'Nunito',
    fontWeight: FontWeight.normal,
    fontSize: 11,
    letterSpacing: 0.4,
    height: 0.9,
    color: Colors.white,
  );
}