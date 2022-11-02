import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zenan_2/pages/main/home/banner_home.dart';
import 'package:zenan_2/pages/main/home/fasonlar_home.dart';
import 'package:zenan_2/utils/colors.dart';

import 'package:zenan_2/utils/custom_theme.dart';
import 'package:zenan_2/utils/flutx/fxpacing.dart';
import 'package:zenan_2/utils/flutx/fxtext.dart';
import 'package:zenan_2/widgets/card_insta.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        //centerTitle: true,
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/images/zenan_logo.svg',
              height: 40,
              width: 40,
              //color: Theme.of(context).primaryColor,
            ),
            Text(
              'Zenan',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(FeatherIcons.bell))],
      ),
      body: ListView(
        children: [
          BannerPage(),
          FasonlarHome(),
          Divider(),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return CardInsta();
              })
        ],
      ),
    );
  }
}
