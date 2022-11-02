// @dart = 2.9
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:zenan_2/models/post_model.dart';

class CardPost extends StatefulWidget {
  PostInfo post;
  CardPost(@required this.post);

  @override
  State<CardPost> createState() => _CardPostState();
}

class _CardPostState extends State<CardPost> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(widget.post.images[0]),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(widget.post.user.toString()),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.favorite_border),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.share),
            ],
          ),
        ),
        GestureDetector(
          onDoubleTap: () {},
          child: Card(
              child: Hero(
            tag: widget.post.images[0],
            child: Image.network(
              widget.post.images[0],
              fit: BoxFit.contain,
            ),
          )),
        ),
        Container(
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                      TextSpan(
                          text: 'gozel_85  ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: widget.post.desc,
                          style: TextStyle(fontFamily: 'Quicksand')),
                      TextSpan(
                          text: widget.post.created_at,
                          style: TextStyle(
                              color: Colors.grey[500],
                              fontFamily: 'Opensans',
                              fontSize: 13)),
                    ])),
              )
            ],
          ),
        )
      ],
    );
  }
}
