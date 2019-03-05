import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample_flutter/constant/Constant.dart';

class WelcomeStatePage extends StatefulWidget {
  @override
  _WelcomeStatePageState createState() => _WelcomeStatePageState();
}

class _WelcomeStatePageState extends State<WelcomeStatePage>
    with WidgetsBindingObserver, SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;
  Timer _timer;

  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(HOME_PAGE);
  }

  @override
  void initState() {
    super.initState();
    print("LifecycleState ----> initState");
    WidgetsBinding.instance.addObserver(this);

    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    print("LifecycleState ----> build");

    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: animation.value * 100,
          height: animation.value * 100,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    print("LifecycleState ----> deactivate");
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("LifecycleState ----> ${state.toString()}");
    switch (state) {
      case AppLifecycleState.inactive:
        print("LifecycleState ----> inactive");
        break;
      case AppLifecycleState.paused:
        print("LifecycleState ----> paused");
        break;
      case AppLifecycleState.resumed:
        print("LifecycleState ----> resumed");
        break;
      case AppLifecycleState.suspending:
        print("LifecycleState ----> suspending");
        break;
    }
  }
}
