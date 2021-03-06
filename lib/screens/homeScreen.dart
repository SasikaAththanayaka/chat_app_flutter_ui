import 'package:chat_app/widgets/call.dart';
import 'package:chat_app/widgets/recentChat.dart';
import 'package:chat_app/widgets/status.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TabController tb;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          //toolbarOpacity: 5.0,
          //toolbarHeight: 90.0,
          //elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Text(
                "CHATS",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              Text(
                "STATUS",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              Text(
                "CALLS",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ],
            labelPadding: EdgeInsets.only(bottom: 8.0),
            unselectedLabelColor: Colors.red,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            RecentChats(),
            Status(),
            Call(),
          ],
        ),
      ),
    );
  }
}
