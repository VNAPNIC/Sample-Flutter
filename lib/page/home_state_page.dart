import 'package:flutter/material.dart';
import 'package:sample_flutter/page/detail/detail_state_page.dart';
import 'package:sample_flutter/constant/constant.dart';

class HomeStatePage extends StatefulWidget {
  @override
  _HomeStatePageState createState() => _HomeStatePageState();
}

class _HomeStatePageState extends State<HomeStatePage> {
  List<Widget> menus = List();

  @override
  void initState() {
    super.initState();
    menus.add(ListTile(
      title: Text("Login Forms"),
      trailing: Icon(Icons.text_fields),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailStatePage(type: TYPE_FORMS))),
      subtitle: Text("UI Login"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home"),
        centerTitle: true,
      ),
      body: ListView(
        children: menus,
      ),
    );
  }
}
