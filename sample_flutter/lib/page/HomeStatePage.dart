import 'dart:async';
import 'package:flutter/material.dart';

class HomeStatePage extends StatefulWidget {
  @override
  _HomeStatePageState createState() => _HomeStatePageState();
}

class _HomeStatePageState extends State<HomeStatePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home"),
        centerTitle: true,
      ),
    );
  }
}
