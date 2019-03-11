import 'dart:async';

import 'package:sample_flutter/bloc/bloc_provider.dart';

class FormBloc implements BlocBase{

  StreamController<String> _streamController = StreamController<String>.broadcast();

  

  @override
  void dispose() {
    _streamController.close();
  }
}