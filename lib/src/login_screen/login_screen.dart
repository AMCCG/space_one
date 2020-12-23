import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  TextStyle textStyle01 = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
      color: const Color(0xff1875F0),
      decoration: TextDecoration.none);
  TextStyle textStyle02 = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
      color: const Color(0xff707070),
      decoration: TextDecoration.none);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: SvgPicture.asset(
                      'assets/images/svg/chemistry.svg',
                      width: 300,
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text('Select an account to sign in with', style: textStyle02)
                ],
              ),
            ),
            Placeholder(
              fallbackHeight: 50,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text('Sign in with another account',
                          style: textStyle01)),
                  Container(
                    width: double.infinity,
                    child: FlatButton(
                      padding: EdgeInsets.all(20),
                      onPressed: () {},
                      child: Text('Sign up for free', style: textStyle01),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(
                            color: const Color(0xff1875F0),
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
