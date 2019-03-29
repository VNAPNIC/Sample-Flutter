import 'package:flutter/material.dart';
import 'package:sample_flutter/widget/login_form/login_form_bloc.dart';
import 'package:sample_flutter/widget/login_form/raised_gradient_widget.dart';
import 'package:sample_flutter/widget/login_form/text_field_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LoginFormWidget extends StatefulWidget {
  final LoginFormBloc bloc = LoginFormBloc();

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {

  TextEditingController _userController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color.fromARGB(250, 248, 248, 248),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: 230.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color.fromARGB(255, 240, 94, 0),
                        const Color.fromARGB(255, 255, 162, 40)
                      ]),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(100.0)),
                ),
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        "assets/images/logo.png",
                        width: 80,
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 16.0, bottom: 40),
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // Username
                  StreamBuilder(
                    stream: widget.bloc.userStream,
                    builder: (context, snapshot) => TextFieldCustomShadow(
                        textController: _userController,
                        hint: "Email",
                        icon: Icons.email,
                        inputType: TextInputType.emailAddress,
                        isPassword: false),
                  ),
                  // Password
                  StreamBuilder(
                      stream: widget.bloc.passStream,
                      builder: (context, snapshot) {
                        return TextFieldCustomShadow(
                            textController: _passController,
                            hint: "Password",
                            icon: Icons.vpn_key,
                            inputType: TextInputType.text,
                            isPassword: true);
                      }),
                  Container(
                    padding: const EdgeInsets.only(right: 50, top: 20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 50.0),
                    //Button Login
                    child: RaisedGradientButton(
                      onPressed: _login,
                      child: Center(
                          child: Text("LOGIN",
                              style: TextStyle(color: Colors.white))),
                      gradient: LinearGradient(
                          colors: [
                            const Color.fromARGB(255, 240, 94, 0),
                            const Color.fromARGB(255, 255, 162, 40)
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft),
                      width: double.infinity,
                      height: 46.0,
                      radius: 30.0,
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          text: 'Don\' gave ab account ? ',
                          children: [
                        TextSpan(
                            text: 'Register',
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold)),
                      ]))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _login() {
   http.post("http://10.64.1.198:1337",body: {"userName":_userController.text,"password":_passController.text})
        .then((response) {
      debugPrint("Response status: ${response.statusCode}");
      debugPrint("Response body: ${response.body}");
    });
  }
}
