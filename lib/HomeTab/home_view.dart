import 'package:flutter/material.dart';

class TabControllerScreen extends StatefulWidget {

  @override
  _TabControllerScreenState createState() => _TabControllerScreenState();
}

class _TabControllerScreenState extends State<TabControllerScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  TabBar _getTabBar() {
    return TabBar(
      tabs: <Widget>[
        Tab(icon: Icon(Icons.home, color: Colors.redAccent)),
        Tab(icon: Icon(Icons.settings, color: Colors.redAccent)),
      ],
      controller: tabController,
    );
  }

  TabBarView _getTabBarView(tabs) {
    return TabBarView(
      children: tabs,
      controller: tabController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _getTabBar(),
            Container(
              height: 100,
              child: _getTabBarView(
                <Widget>[
                  Icon(Icons.home),
                  Icon(Icons.settings),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}