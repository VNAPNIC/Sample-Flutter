import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          children: <Widget>[
            TextField(cursorWidth: 200, cursorRadius: Radius.circular(10),)
          ],
        ),
      ),
    );
  }
}
