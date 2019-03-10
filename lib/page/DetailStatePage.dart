import 'package:flutter/material.dart';

class DetailStatePage extends StatefulWidget {
  final int type;

  DetailStatePage({Key key, @required this.type}) : super(key: key);

  @override
  _DetailStatePage createState() => _DetailStatePage(type);
}

class _DetailStatePage extends State<DetailStatePage> {
  final int type;
  _DetailStatePage(this.type);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
