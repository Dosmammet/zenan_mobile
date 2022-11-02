import 'package:flutter/material.dart';
import 'package:zenan_2/models/post_model.dart';
import 'package:zenan_2/utils/colors.dart';
import 'package:zenan_2/utils/flutx/fxcontainer.dart';
import 'package:zenan_2/utils/flutx/fxpacing.dart';
import 'package:zenan_2/utils/flutx/fxstarrating.dart';
import 'package:zenan_2/utils/flutx/fxtext.dart';
import 'package:zenan_2/widgets/card_insta.dart';
import 'package:zenan_2/widgets/card_post.dart';

class CatArtists extends StatelessWidget {
  const CatArtists({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text('Tikinci'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return FxContainer(
                      color: Colors.grey[100],
                      onTap: () {},
                      margin: FxSpacing.fromLTRB(8, 4, 8, 0),
                      paddingAll: 12,
                      borderRadiusAll: 20,
                      child: Row(
                        children: [
                          Container(
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://ichef.bbci.co.uk/news/976/cpsprodpb/12A9A/production/_120424467_joy2.jpg'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                                border:
                                    Border.all(color: kIconColor, width: 2)),
                          ),
                          // FxContainer(
                          //   //height: 100,
                          //   paddingAll: 0,
                          //   borderRadiusAll: 200,
                          //   child: ClipRRect(
                          //     borderRadius: BorderRadius.all(Radius.circular(16)),
                          //     child: Image(
                          //       width: 72,
                          //       height: 72,
                          //       image: NetworkImage(
                          //         'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg',
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          FxSpacing.width(16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FxText.b1(
                                      'Buhulu',
                                      fontWeight: 600,
                                    ),
                                    Row(
                                      children: [
                                        FxStarRating(
                                          rating: 3,
                                          showInactive: true,
                                          size: 15,
                                          inactiveColor: kBackground2Color,
                                        ),
                                        FxSpacing.width(4),
                                        FxText.b3(
                                          3.toString() +
                                              ' | ' +
                                              '5' +
                                              ' Reviews',
                                          xMuted: true,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                FxSpacing.height(8),
                                FxText.b3(
                                  'Tikinci | Balkan, Turkmenbashy',
                                  xMuted: true,
                                ),
                                FxSpacing.height(12),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      child: Text(
                        'Hemmesini gor >',
                        style: TextStyle(),
                      ),
                      onPressed: () {}),
                ],
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return CardInsta();
                  })
            ],
          ),
        ));
  }
}
