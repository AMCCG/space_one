import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:space_one/src/model/user_info.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    UserInfo user = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            print("Tap");
          },
          child: Row(
            children: [
              Text(
                'Feed',
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.black,
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.filter_list, color: Colors.black),
            onPressed: () {
              print("Filter");
            },
          ),
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              print("search");
            },
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.transparent,
                        backgroundImage: ResizeImage(
                            MemoryImage(Base64Decoder()
                                .convert(user.image.split(',').last)),
                            width: 50,
                            height: 50)),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "${user.username}",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("${user.position}", style: TextStyle(fontSize: 12))
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  SizedBox(width: 15),
                  Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 20,
                  ),
                  SizedBox(width: 25),
                  Text('Online', style: TextStyle(fontSize: 12))
                ],
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Text("Hello ${user.username}"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(color: Colors.blue, fontSize: 12),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black, fontSize: 12),
        showUnselectedLabels: true,
        currentIndex: index,
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
          print("Navigation to page ${index}");
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity), label: 'Activity'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.group_work), label: 'Teams'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.more), label: 'More'),
        ],
      ),
    );
  }
}
