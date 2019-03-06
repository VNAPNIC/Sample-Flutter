import 'package:flutter/material.dart';
import 'package:sample_flutter/page/HomeStatePage.dart';
import 'package:sample_flutter/page/WelcomeStatePage.dart';
import 'package:sample_flutter/constant/Constant.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeStatePage(),
      routes: <String, WidgetBuilder>{
        WELCOME_PAGE: (BuildContext context) => WelcomeStatePage(),
        HOME_PAGE: (BuildContext context) => HomeStatePage(),
      },
    );
  }
}
