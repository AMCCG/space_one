import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  TextStyle textStyle01 = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 32,
      color: const Color(0xff1875F0),
      decoration: TextDecoration.none);
  TextStyle textStyle02 = TextStyle(
      fontWeight: FontWeight.w100,
      fontSize: 24,
      color: const Color(0xff707070),
      decoration: TextDecoration.none);

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      print("Navigator to login screen");
      Navigator.pushReplacementNamed(context, '/login_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "Space I",
            style: textStyle01,
          ),
          Container(
            child: Image.asset(
              "assets/images/icon/group_space.png",
              width: 250,
            ),
          ),
          Container(
            child: Text(
              "Welcome to Space I A happier place for teams to work together.",
              style: textStyle02,
              textAlign: TextAlign.center,
            ),
          ),
          new CircularProgressIndicator(),
        ],
      ),
    );
  }
}
