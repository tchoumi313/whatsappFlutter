import 'package:flutter/material.dart';
import 'package:whatsapp_clone_using_flutter/pages/call_screen.dart';
import 'package:whatsapp_clone_using_flutter/pages/camera_screen.dart';
import 'package:whatsapp_clone_using_flutter/pages/chat_screen.dart';
import 'package:whatsapp_clone_using_flutter/pages/groups_screen.dart';
import 'package:whatsapp_clone_using_flutter/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabcontroller;

  @override
  void initState() {
    // TODO
    super.initState();
    _tabcontroller = new TabController(length: 5, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Daiki_WhatsApp"),
          elevation: 10,
          bottom: new TabBar(
            controller: _tabcontroller,
            indicatorColor: Colors.black45,
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(text: "CHATS"),
              new Tab(
                text: "GROUPS",
              ),
              new Tab(
                text: "STATUS",
              ),
              new Tab(
                text: "CALLS",
              ),
            ],
          ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert),
        ],
      ),
      body: new TabBarView(
          controller: _tabcontroller,
          children: <Widget>[
            new CameraScreen(),
            new ChatScreen(),
            new GroupsScreen(),
            new StatusScreen(),
            new CallScreen(),
          ]
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(Icons.message),
        onPressed: () => print("Donald"),
      ),
    );
  }
}
