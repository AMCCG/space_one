import 'dart:convert';

class UserInfo {
  String username;
  String position;
  String image;

  UserInfo({this.username, this.position});

  UserInfo.fromJson(Map<String, dynamic> json)
      : username = json['username'],
        position = json['position'],
        image = json['image'];

  Map<String, dynamic> toJson() => {
        'name': username,
        'position': position,
        'image': image,
      };
}
