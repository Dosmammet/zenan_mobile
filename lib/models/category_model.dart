//@dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CatInfo {
  int id;
  String name;
  String image;

  CatInfo(
    int id,
    String name,
    String image,
  ) {
    this.id = id;
    this.name;
    this.image;
  }

  CatInfo.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        image = json['image'];
  Map toJson() {
    return {
      'id': id,
      'name': name,
      'image': image,
    };
  }
}
