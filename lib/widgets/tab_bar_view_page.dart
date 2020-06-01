import 'package:flutter/material.dart';
import 'package:flutterapp/theme/color.dart';

import 'tabs_page.dart';


class bottomNavigationBarChild extends StatelessWidget {
  const bottomNavigationBarChild({
    Key key,
    @required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppTheme.wcyan,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      textStyle: AppTheme.titlelight,
      child: TabBar(
        indicatorColor: AppTheme.indicatorcolor,
        indicatorWeight: 4,
        isScrollable: true,
        tabs: TabsRoute.tabs,
        controller: _tabController,
      ),
    );
  }
}

class tabViewChild extends StatelessWidget {
  const tabViewChild({
    Key key,
    @required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: TabsRoute.tabspages,
      controller: _tabController,
    );
  }
}
