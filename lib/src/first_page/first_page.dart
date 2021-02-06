import 'package:flutter/material.dart';
import 'package:space_one/src/model/user_info.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    UserInfo user = ModalRoute.of(context).settings.arguments;

    return Container(
      color: Colors.white,
      child: Text("Hello ${user.name}"),
    );
  }
}
