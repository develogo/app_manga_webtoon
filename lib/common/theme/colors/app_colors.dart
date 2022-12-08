import 'package:flutter/material.dart';

class AppColor {
  // static const Color primary = Color(0xFFDA0037);

  static const MaterialColor primary = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color.fromRGBO(_rValue, _gValue, _bValue, .1),
      100: Color.fromRGBO(_rValue, _gValue, _bValue, .2),
      200: Color.fromRGBO(_rValue, _gValue, _bValue, .3),
      300: Color.fromRGBO(_rValue, _gValue, _bValue, .4),
      400: Color.fromRGBO(_rValue, _gValue, _bValue, .5),
      500: Color(_primaryValue),
      600: Color.fromRGBO(_rValue, _gValue, _bValue, .7),
      700: Color.fromRGBO(_rValue, _gValue, _bValue, .8),
      800: Color.fromRGBO(_rValue, _gValue, _bValue, .9),
      900: Color.fromRGBO(_rValue, _gValue, _bValue, 1),
    },
  );
  static const int _primaryValue = 0xFFDA0037;
  static const int _rValue = 218;
  static const int _gValue = 0;
  static const int _bValue = 55;

  static const Color darkColor = Color(0xFF171717);
}
