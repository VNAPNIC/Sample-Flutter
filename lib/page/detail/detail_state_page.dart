import 'package:flutter/material.dart';
import 'package:sample_flutter/constant/constant.dart';
import 'package:sample_flutter/widget/text_field/form_widget.dart';

class DetailStatePage extends StatefulWidget {
  final int type;

  DetailStatePage({Key key, @required this.type}) : super(key: key);

  @override
  _DetailStatePage createState() => _DetailStatePage(type);
}

class _DetailStatePage extends State<DetailStatePage> {
  final int type;

  _DetailStatePage(this.type);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:_titleWidget(),
      ),
      body: _initWidget(),
    );
  }

  Widget _initWidget() {
    switch (type) {
      case TYPE_FORMS:
        return FormWidget();
    }
  }

  Widget _titleWidget() {

  }
}
