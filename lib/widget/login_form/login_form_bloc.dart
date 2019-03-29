import 'dart:async';

import 'package:sample_flutter/bloc/bloc_provider.dart';
import 'package:sample_flutter/utils/validators.dart';

class LoginFormBloc implements BlocBase{

  StreamController _userController = StreamController();
  StreamController _passController = StreamController();

  Stream get userStream => _userController.stream;
  Stream get passStream => _passController.stream;

  bool isValidInfo(String username,String pass){
    if(!Validators.isValidUser(username)){
      //input ms error
      _userController.sink.addError('Username is not valid!');
      return false;
    }

    if(!Validators.isValidPassword(pass)){
      _passController.sink.addError('Password is not valid!');
      return false;
    }

    _userController.sink.add('Ok');
    _passController.sink.add('Ok');
    return true;
  }

  @override
  void dispose() {
    _userController.close();
    _passController.close();
  }
}