import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:zenan_2/models/category_model.dart';
import 'package:zenan_2/models/post_model.dart';
import 'package:zenan_2/pages/main/search/cat_artists.dart';
import 'package:zenan_2/pages/main/search/post_detail.dart';
import 'package:zenan_2/pages/main/search/search_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:zenan_2/utils/colors.dart';
import 'package:zenan_2/utils/flutx/fxpacing.dart';
import 'package:zenan_2/utils/flutx/fxtext.dart';

class SearchPage extends StatelessWidget {
  List<CatInfo> categories = [
    CatInfo(1, 'Tikinci',
        'data:image/png;base64,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'),
    CatInfo(1, 'Tikinci',
        'data:image/png;base64,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'),
    CatInfo(1, 'Tikinci',
        'data:image/png;base64,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'),
  ];

  List<PostInfo> posts = [
    PostInfo(
      1,
      120,
      [
        'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg',
        'https://images.news18.com/ibnlive/uploads/2022/01/kareena-kapoor-khan-2.jpg?impolicy=website&width=0&height=0'
      ],
      1,
      '22-9-22',
      120,
      'Taze tiken koyneklem',
      {'name': 'Yulduz'},
    ),
    PostInfo(
      1,
      120,
      [
        'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg',
        'https://images.news18.com/ibnlive/uploads/2022/01/kareena-kapoor-khan-2.jpg?impolicy=website&width=0&height=0'
      ],
      1,
      '22-9-22',
      120,
      'Taze tiken koyneklem',
      {'name': 'Yulduz'},
    ),
    PostInfo(
      1,
      120,
      [
        'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg',
        'https://images.news18.com/ibnlive/uploads/2022/01/kareena-kapoor-khan-2.jpg?impolicy=website&width=0&height=0'
      ],
      1,
      '22-9-22',
      120,
      'Taze tiken koyneklem',
      {'name': 'Yulduz'},
    ),
    PostInfo(
      1,
      120,
      [
        'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg',
        'https://images.news18.com/ibnlive/uploads/2022/01/kareena-kapoor-khan-2.jpg?impolicy=website&width=0&height=0'
      ],
      1,
      '22-9-22',
      120,
      'Taze tiken koyneklem',
      {'name': 'Yulduz'},
    ),
    PostInfo(
      1,
      120,
      [
        'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg',
        'https://images.news18.com/ibnlive/uploads/2022/01/kareena-kapoor-khan-2.jpg?impolicy=website&width=0&height=0'
      ],
      1,
      '22-9-22',
      120,
      'Taze tiken koyneklem',
      {'name': 'Yulduz'},
    ),
    PostInfo(
      1,
      120,
      [
        'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg',
        'https://images.news18.com/ibnlive/uploads/2022/01/kareena-kapoor-khan-2.jpg?impolicy=website&width=0&height=0'
      ],
      1,
      '22-9-22',
      120,
      'Taze tiken koyneklem',
      {'name': 'Yulduz'},
    ),
    PostInfo(
      1,
      120,
      [
        'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg',
        'https://images.news18.com/ibnlive/uploads/2022/01/kareena-kapoor-khan-2.jpg?impolicy=website&width=0&height=0'
      ],
      1,
      '22-9-22',
      120,
      'Taze tiken koyneklem',
      {'name': 'Yulduz'},
    ),
    PostInfo(
      1,
      120,
      [
        'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg',
        'https://images.news18.com/ibnlive/uploads/2022/01/kareena-kapoor-khan-2.jpg?impolicy=website&width=0&height=0'
      ],
      1,
      '22-9-22',
      120,
      'Taze tiken koyneklem',
      {'name': 'Yulduz'},
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            //toolbarHeight: 75,
            title: SearchBar(),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                // Padding(
                //   padding: FxSpacing.horizontal(24),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       FxText.sh1("Categories",
                //           letterSpacing: 0,
                //           color: Colors.black,
                //           fontWeight: 600),
                //       FxText.caption("See All",
                //           color: Colors.black,
                //           fontWeight: 600,
                //           xMuted: true,
                //           letterSpacing: 0),
                //     ],
                //   ),
                // ),
                // FxSpacing.height(16),

                Container(
                  // width: 200,
                  height: 70,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(CatArtists());
                          },
                          child: Container(
                            height: 70,
                            width: 75,
                            decoration: BoxDecoration(
                              color: kBackground2Color,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                // Padding(
                                //   padding: const EdgeInsets.all(3.0),
                                //   child: Container(
                                //     child: Image.network(
                                //       'https://media.voguebusiness.com/photos/621e06bf17b9c2e9b062bc0b/master/pass/reliance-acquisition-voguebus-full-getty-credit-mar-22-story.jpg',
                                //       fit: BoxFit.cover,
                                //     ),
                                //   ),
                                // ),
                                Text('Hairstyle')
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                StaggeredGridView.countBuilder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    staggeredTileBuilder: (index) =>
                        StaggeredTile.count(2, index.isEven ? 2 : 3),
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    crossAxisCount: 4,
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(PostDetail(posts[index]));
                        },
                        child: Container(
                          child: Hero(
                            tag: posts[index].images[0],
                            child: Image.network(
                              posts[index].images[0],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}
