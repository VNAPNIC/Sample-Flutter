import 'dart:async';

import 'package:sample_flutter/bloc/bloc_provider.dart';

class FormBloc implements BlocBase{

  StreamController _userController = StreamController();
  StreamController _passController = StreamController();


  @override
  void dispose() {
    _userController.close();
    _passController.close();
  }
}