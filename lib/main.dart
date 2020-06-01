import 'package:flutter/material.dart';
import 'package:flutterapp/theme/color.dart';

import 'common/route_page.dart';
import 'pages/home_page.dart';
import 'pages/mathematiques/math_ui.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lighttheme,
      home: HomePage(),
      initialRoute: RouteNames.home,
      routes: {
        RouteNames.home: (context) =>  HomePage(),
        RouteNames.mathematiques: (context) =>  MathHomePage(),
        RouteNames.informatique: (context) =>  HomePage(),
        RouteNames.physique: (context) =>  HomePage(),
        RouteNames.chime: (context) =>  HomePage(),
      },
    );
  }
}