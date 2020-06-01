import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color wblue = Color(0xFF2196f3);
  static const Color wcyan = Color(0xFF00BCD1);
  static const Color wdarkcyan = Color(0xFF006064);
  static const Color indicatorcolor = Color(0xFFf44336);
  static const Color wgreen100 = Color(0xFFdcedc8);
  static const Color wappbg = Color(0xFFfff7ec);
  static const Color appbg = Color(0xFFffecb3);
  static const Color wtobarbg = Color(0xFFffd974);
  static const Color wselectedtablebg = Color(0xFFffc442);
  static const Color wsubtitlebg = Color(0xFF9f988f);
  static const Color wdarkbg = Color(0xFF263238);
  static const Color wblackbg = Color(0xFF000000);

  static final ThemeData lighttheme = ThemeData(
      scaffoldBackgroundColor: AppTheme.wappbg,
      brightness: Brightness.light,
      textTheme: lightTextTheme,
      backgroundColor: appbg,
      appBarTheme: barlighttheme);

  static final ThemeData darktheme = ThemeData(
      scaffoldBackgroundColor: AppTheme.wblackbg,
      brightness: Brightness.dark,
      textTheme: darkTextTheme,
      appBarTheme: barlighttheme,
      backgroundColor: wdarkbg);

  // icons theme
  static final IconThemeData iconlight = IconThemeData(
    color: Colors.black,
  );
  static final IconThemeData icondark = IconThemeData(
    color: appbg,
  );

  //appbar theme
  static final AppBarTheme barlighttheme = AppBarTheme(
      iconTheme: iconlight,
      centerTitle: true,
      textTheme: lightTextTheme,
      elevation: 0.0,
      color: wappbg);
  static final AppBarTheme bardarktheme = AppBarTheme(
      iconTheme: icondark,
      centerTitle: true,
      textTheme: darkTextTheme,
      elevation: 0.0,
      color: wappbg);

  //text theme
  static final TextTheme lightTextTheme = TextTheme(
      subtitle1: titlelight, subtitle2: _subtitlelight, button: _buttonlight);
  static final TextTheme darkTextTheme = TextTheme(
      subtitle1: _titledark, subtitle2: _subtitledark, button: _buttondark);

  static final TextStyle titlelight = TextStyle(color: wblackbg, fontSize: 28);
  static final TextStyle _subtitlelight =
      TextStyle(color: wsubtitlebg, fontSize: 18, height: 1.5);
  static final TextStyle _buttonlight =
      TextStyle(color: wblackbg, fontSize: 22);

  static final TextStyle _titledark = titlelight.copyWith(color: Colors.white);
  static final TextStyle _subtitledark =
      titlelight.copyWith(color: Colors.white70);
  static final TextStyle _buttondark = titlelight.copyWith(color: Colors.white);
}
