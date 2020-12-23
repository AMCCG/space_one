import 'package:flutter/material.dart';
import 'package:space_one/src/login_screen/login_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/':(context) => LoginScreen()
    },);
  }
}
