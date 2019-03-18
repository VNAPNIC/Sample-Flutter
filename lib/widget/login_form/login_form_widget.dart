import 'package:flutter/material.dart';
import 'package:sample_flutter/widget/login_form/raised_gradient_buttom.dart';
import 'package:sample_flutter/widget/login_form/text_field_widget.dart';

class LoginFormWidget extends StatelessWidget {
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
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    TextFieldCustomShadow(
                        hint: "Email",
                        icon: Icons.email,
                        inputType: TextInputType.emailAddress,
                        isPassword: false),
                    TextFieldCustomShadow(
                        hint: "Password",
                        icon: Icons.vpn_key,
                        inputType: TextInputType.text,
                        isPassword: true),
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
                      child: RaisedGradientButton(
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
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
