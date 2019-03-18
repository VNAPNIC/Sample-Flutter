import 'package:flutter/material.dart';

class TextFieldCustomShadow extends StatefulWidget {
  final String hint;
  final IconData icon;
  final TextInputType inputType;
  final bool isPassword;

  TextFieldCustomShadow({this.hint, this.icon, this.inputType, this.isPassword});

  @override
  _TextFieldCustomShadowState createState() => _TextFieldCustomShadowState();
}

class _TextFieldCustomShadowState extends State<TextFieldCustomShadow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 40, right: 40),
      child: Container(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 218, 218, 218),
                blurRadius: 8.0,
                offset: Offset(1, 3))
          ],
        ),
        child: TextField(
          keyboardType: widget.inputType,
          obscureText: widget.isPassword,
          decoration: InputDecoration(
              prefixIcon: Icon(
                widget.icon,
                color: Colors.grey,
              ),
              hintText: widget.hint,
              hintStyle: TextStyle(color: Color.fromARGB(255, 218, 218, 218)),
              border: InputBorder.none),
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
