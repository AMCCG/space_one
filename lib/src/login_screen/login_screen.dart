import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: SvgPicture.asset(
                      'assets/images/svg/chemistry.svg',
                      width: 250,
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text('Select an account to sign in with', style: textStyle02),
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  width: 50,
                                  height: 50,
                                  child: Center(
                                      child: SvgPicture.asset(
                                    'assets/images/svg/user.svg',
                                    color: Colors.white,
                                    width: 20,
                                    height: 20,
                                  )),
                                  decoration: BoxDecoration(
                                      color: Color(0x401875F0),
                                      shape: BoxShape.circle),
                                ),
                                Text('tee_api@hotmail.com', style: textStyle02),
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  width: 50,
                                  height: 50,
                                  child: Center(
                                      child: SvgPicture.asset(
                                    'assets/images/svg/user.svg',
                                    color: Colors.white,
                                    width: 20,
                                    height: 20,
                                  )),
                                  decoration: BoxDecoration(
                                      color: Color(0x401875F0),
                                      shape: BoxShape.circle),
                                ),
                                Text('apisit.a@avlgb.com', style: textStyle02),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Text('Sign in with another account',
                          style: textStyle01)),
                  Container(
                    width: double.infinity,
                    child: FlatButton(
                      padding: EdgeInsets.all(15),
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
