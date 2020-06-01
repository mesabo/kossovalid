import 'package:flutter/material.dart';
import 'package:flutterapp/common/appbar.dart';
import 'package:flutterapp/theme/color.dart';
import 'package:flutterapp/widgets/tab_bar_view_page.dart';
import 'package:flutterapp/widgets/tabs_page.dart';

class MathHomePage extends StatefulWidget {
  const MathHomePage({Key key}) : super(key: key);

  @override
  _MathHomePageState createState() => _MathHomePageState();
}

class _MathHomePageState extends State<MathHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: TabsRoute.tabspages.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Map args = ModalRoute.of(context).settings.arguments as Map;

    return Scaffold(
      appBar: wappbarlightwithbottom(args['title']),
      body: tabViewChild(tabController: _tabController),
      bottomNavigationBar: bottomNavigationBarChild(tabController: _tabController),
    );
  }
}
