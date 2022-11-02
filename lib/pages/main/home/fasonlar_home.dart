import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:zenan_2/models/fason_model.dart';
import 'package:zenan_2/widgets/card_fason1.dart';

class FasonlarHome extends StatefulWidget {
  const FasonlarHome({Key? key}) : super(key: key);

  @override
  _FasonlarHomeState createState() => _FasonlarHomeState();
}

class _FasonlarHomeState extends State<FasonlarHome> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15, top: 10, bottom: 5, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 30,
                width: 7,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'Fasonlar',
                style: const TextStyle(
                  fontSize: 22,
                  letterSpacing: -0.6,
                  wordSpacing: 1,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              TextButton(
                  child: Text(
                    'all'.tr + ' >',
                    style: TextStyle(
                      color:
                          Theme.of(context).primaryColorDark.withOpacity(0.5),
                    ),
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
        Container(
          height: 200,
          width: double.infinity,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (BuildContext context, index) {
              FasonInfo d = FasonInfo(
                  123,
                  2,
                  [
                    'https://cdn.cliqueinc.com/posts/301625/fashion-week-street-style-trend-predictions-301625-1659747516690-main.700x0c.jpg',
                    '3'
                  ],
                  2,
                  '23',
                  2);
              return CardFason1(fason: d, heroTag: '1');
            },
          ),
        ),
      ],
    );
  }
}
