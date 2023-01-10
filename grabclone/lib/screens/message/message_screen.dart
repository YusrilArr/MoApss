// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:grabclone/screens/message/screens/chats/chats.dart';
import 'package:grabclone/screens/message/screens/notifications/notifications.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

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
    return Scaffold(
      appBar: AppBar(
        // elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Messages',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('Trash');
            },
            icon: Icon(
              LineAwesomeIcons.trash,
              color: Colors.black,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.green,
          unselectedLabelColor: Colors.black38,
          labelColor: Colors.green,
          labelStyle: TextStyle(
            color: Colors.green,
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          tabs: [
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Notifications',
            )
          ],
        ),
      ),
      body: Container(
        child: TabBarView(children: [
          Chats(),
          Notifications(),
        ]),
      ),
    );
  }
}
