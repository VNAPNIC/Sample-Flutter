import 'package:flutter/material.dart';

class RaisedGradientButton extends StatefulWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;
  final double radius;

  RaisedGradientButton(
      {this.child,
      this.gradient,
      this.width,
      this.height,
      this.onPressed,
      this.radius});

  @override
  _RaisedGradientButtonState createState() => _RaisedGradientButtonState();
}

class _RaisedGradientButtonState extends State<RaisedGradientButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          gradient: widget.gradient,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 218, 218, 218),
                blurRadius: 8.0,
                offset: Offset(1, 3))
          ],
          borderRadius: BorderRadius.circular(widget.radius)),
      child: InkWell(
        onTap: widget.onPressed,
        child: widget.child,
      ),
    );
  }
}
