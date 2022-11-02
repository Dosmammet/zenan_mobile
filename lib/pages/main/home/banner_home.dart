import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zenan_2/utils/cached_image.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  _BannerPageState createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  // var bannerFetch = <BannerInfo>[];

  @override
  // void initState() {
  //   dataBannerFethc();
  //   super.initState();
  // }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: CarouselSlider(
        items: <Widget>[
          Container(
            margin: EdgeInsets.all(6.0),
            child: CustomCacheImage(
              imageUrl:
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-collage-fashion-ukraine-1646682565.jpg',
              radius: 10.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              // image: DecorationImage(
              //   // image: NetworkImage(bannerFetch[i].photo),
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
        ],
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}
