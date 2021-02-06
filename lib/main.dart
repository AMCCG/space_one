import 'package:flutter/material.dart';
import 'package:space_one/src/first_page/first_page.dart';
import 'package:space_one/src/loading_screen/loading_screen.dart';
import 'package:space_one/src/login_screen/login_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xff1875F0)),
      initialRoute: '/loading_screen',
      routes: <String, WidgetBuilder>{
        '/loading_screen': (context) => LoadingScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/first_page': (context) => FirstPage()
      },
    );
  }
}
