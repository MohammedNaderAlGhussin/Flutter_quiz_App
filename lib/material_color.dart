import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFE0F3F1),
  100: Color(0xFFB3E0DB),
  200: Color(0xFF80CBC4),
  300: Color(0xFF4DB6AC),
  400: Color(0xFF26A79A),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFF008F80),
  700: Color(0xFF008475),
  800: Color(0xFF007A6B),
  900: Color(0xFF006958),
});
const int _primaryPrimaryValue = 0xFF009788;

const MaterialColor primaryAccent =
    MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFF98FFEB),
  200: Color(_primaryAccentValue),
  400: Color(0xFF32FFD8),
  700: Color(0xFF19FFD3),
});
const int _primaryAccentValue = 0xFF65FFE2;
