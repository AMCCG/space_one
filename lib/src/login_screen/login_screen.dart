import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  TextStyle  textStyle01 = TextStyle(fontSize: 14,color: const Color(0xff1875F0),decoration:TextDecoration.none);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Placeholder(fallbackHeight: 100,),
            Placeholder(fallbackHeight: 50,),
            Center(
              child: Column(
                children: <Widget>[
                  Text('Sign in with another account',style: textStyle01),
                  Text('Sign up for free',style: textStyle01)
                ],
              ),
            )
          ],
        )
    );
  }
}