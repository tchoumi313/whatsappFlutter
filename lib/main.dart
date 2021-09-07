import 'package:flutter/material.dart';
import 'package:whatsapp_clone_using_flutter/WhatsAppHome.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: new ThemeData(
        primaryColor: Colors.greenAccent,
        accentColor: Colors.white,
      ),
      home: new WhatsAppHome(),
    );
  }
}
