import 'package:flutter/material.dart';
import 'package:sample_flutter/widget/login_form/text_field_widget.dart';

class LoginFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 248, 248, 248),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment(0.0, 1),
                    colors: [
                      const Color.fromARGB(255, 240, 94, 0),
                      const Color.fromARGB(255, 255, 162, 40)
                    ]),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(100.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo.png",
                    width: 80,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
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
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: <Widget>[
                  TextFieldCustomShadow(
                      "Email", Icons.email, TextInputType.emailAddress, false),
                  TextFieldCustomShadow(
                      "Password", Icons.vpn_key, TextInputType.text, true),
                  Container(
                    padding: const EdgeInsets.only(right: 50, top: 20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 50.0, right: 50.0, top: 40.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                          onPressed: () {},
                          color: Colors.transparent,
                          textColor: Colors.white,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      const Color.fromARGB(255, 240, 94, 0),
                                      const Color.fromARGB(255, 255, 162, 40)
                                    ],
                                    end: Alignment(0.0, 0.0),
                                    begin: Alignment(1.0, 0.0)),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          )),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
