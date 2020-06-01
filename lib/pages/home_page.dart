import 'package:flutter/material.dart';
import 'package:flutterapp/common/appbar.dart';
import 'package:flutterapp/common/page_title.dart';
import 'package:flutterapp/common/route_page.dart';
import 'package:flutterapp/theme/color.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: wappbarlight(AppTitle.hometitle),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.mathematiques,
                      arguments: {'title': AppTitle.mathstitle});
                },
                child: Text('MATHÉMATIQUES')),
            FlatButton(onPressed: () {}, child: Text('INFORMATIQUE')),
            FlatButton(onPressed: () {}, child: Text('PHYSIQUE')),
            FlatButton(onPressed: () {}, child: Text('CHIMIE')),
          ],
        ),
      )),
    );
  }
}
