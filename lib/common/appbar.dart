import 'package:flutter/material.dart';
import 'package:flutterapp/theme/color.dart';

import 'page_title.dart';

Widget wappbarlight(String title){
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    iconTheme: AppTheme.iconlight,
    backgroundColor: AppTheme.wappbg,
    title: Text(
      title,
      style:AppTheme.titlelight,
    ),
  );
}
Widget wappbarlightwithbottom(String title){
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    iconTheme: AppTheme.iconlight,
    backgroundColor: AppTheme.wappbg,
    title: Text(
      title,
      style:AppTheme.titlelight,
    ),
  );
}
Widget wappbardark(String title){
  return AppBar(
    elevation: 0.0,
    centerTitle: true,
    iconTheme: AppTheme.icondark,
    backgroundColor: AppTheme.wappbg,
    title: Text(
      title,
      style:AppTheme.titlelight,
    ),
  );
}