// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:grabclone/screens/activity/screens/activities.dart';
import 'package:grabclone/screens/activity/screens/delivery.dart';

class TabbarActivity extends StatefulWidget {
  const TabbarActivity({super.key});

  @override
  State<TabbarActivity> createState() => _TabbarActivityState();
}

class _TabbarActivityState extends State<TabbarActivity>
    with SingleTickerProviderStateMixin {
  int tabIndex = 0;

  TabController? _tabController;

  BoxDecoration setBgTab(int currentIndex) {
    if (tabIndex == currentIndex) {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(
          0xFFF2F2F2,
        ),
      );
    } else {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF2F2F2),
      );
    }
  }

  TextStyle setColorText(int currentIndex) {
    if (tabIndex == currentIndex) {
      return TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
        fontSize: 15,
      );
    } else {
      return TextStyle(
        color: Colors.black54,
      );
    }
  }

  // @override
  // void setState(VoidCallback fn) {
  //   super.setState(fn);
  //   _tabController = TabController(length: 2, vsync: this);
  // }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 15,
            ),
            width: 200,
            height: 36,
            child: TabBar(
              onTap: (index) {
                setState(() {
                  tabIndex = index;
                });
              },
              controller: _tabController,
              labelPadding: EdgeInsets.symmetric(horizontal: 2),
              indicatorColor: Colors.transparent,
              tabs: [
                Tab(
                  child: Container(
                    child: Center(
                      child: Text(
                        'Activities',
                        style: setColorText(0),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    decoration: setBgTab(0),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Center(
                      child: Text(
                        'Delivery',
                        style: setColorText(1),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    decoration: setBgTab(1),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Activities(),
                Delivery(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
