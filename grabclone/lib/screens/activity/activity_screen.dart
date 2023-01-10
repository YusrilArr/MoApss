// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grabclone/screens/activity/widgets/header.dart';
import 'package:grabclone/screens/activity/widgets/tabbar_activity.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Header
            Header(),

            SizedBox(
              height: 20,
            ),

            TabbarActivity(),

            //Tabbar Activity
          ],
        ),
      )),
    );
  }
}
