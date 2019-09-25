import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData build() => ThemeData(
    primaryColor: Color(0xff1e66de),
    primaryColorDark: Color(0xff003dab),
    primaryColorLight: Color(0xff6993ff),
    accentColor: Color(0xFFe0e0e0),
    backgroundColor: Colors.white,
    brightness: Brightness.light,
  );


  /// Wrap a widget to be affected for this theme
  ///
  /// AppTheme.darkTheme(child: Column(...))

  static Theme darkTheme({Widget child}) => Theme(
    data: ThemeData(
      primaryColor: Color(0xff1e66de),
      primaryColorDark: Color(0xff003dab),
      primaryColorLight: Color(0xff6993ff),
      accentColor: Color(0xFFe0e0e0),
      backgroundColor: Colors.white,
      brightness: Brightness.dark,
    ),
    child: child,
  );
}
