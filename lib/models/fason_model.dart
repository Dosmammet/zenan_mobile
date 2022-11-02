//@dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FasonInfo {
  int id;
  int liked;
  List<String> images;
  int cat_id;
  int view;
  String created_at;

  FasonInfo(
    int id,
    int liked,
    List<String> images,
    int cat_id,
    String created_at,
    int view,
  ) {
    this.id = id;
    this.liked = liked;
    this.images = images;
    this.cat_id = cat_id;
    this.created_at = created_at;
    this.view = view;
  }

  FasonInfo.fromJson(Map json)
      : id = json['id'],
        liked = json['liked'],
        images = json['images'],
        cat_id = json['cat_id'],
        created_at = json['created_at'],
        view = json['view'];
  Map toJson() {
    return {
      'id': id,
      'liked': liked,
      'images': images,
      'cat_id': cat_id,
      'created_at': created_at,
      'view': view,
    };
  }
}
