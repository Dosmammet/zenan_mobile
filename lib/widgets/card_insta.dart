import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';

class CardInsta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'gozel_85',
                          style: TextStyle(
                              color: Theme.of(context).primaryColorDark,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 1.0),
                          child: Text(
                            'Balkan, Turkmenbashy',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      "assets/images/love_icon.svg",
                      color: Colors.black,
                      width: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(
                      "assets/images/comment_icon.svg",
                      color: Colors.black,
                      width: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(
                      "assets/images/message_icon.svg",
                      color: Colors.black,
                      width: 20,
                    ),
                  ],
                ),
                SvgPicture.asset(
                  "assets/images/save_icon.svg",
                  width: 20,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 15, right: 15),
          //   child: RichText(
          //       text: TextSpan(children: [
          //     TextSpan(
          //         text: "Liked by ",
          //         style: TextStyle(
          //           color: Theme.of(context).primaryColorDark,
          //           fontSize: 15,
          //         )),
          //     TextSpan(
          //         text: "likedBy ",
          //         style: TextStyle(
          //             color: Theme.of(context).primaryColorDark,
          //             fontSize: 15,
          //             fontWeight: FontWeight.w700)),
          //     TextSpan(
          //         text: "and ",
          //         style: TextStyle(
          //             color: Theme.of(context).primaryColorDark,
          //             fontSize: 15,
          //             fontWeight: FontWeight.w500)),
          //     TextSpan(
          //         text: "Other",
          //         style: TextStyle(
          //             color: Theme.of(context).primaryColorDark,
          //             fontSize: 15,
          //             fontWeight: FontWeight.w700)),
          //   ])),
          // ),
          // SizedBox(
          //   height: 12,
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 15, right: 15),
            child: ReadMoreText(
                "Everything is fine, we the best music. Another one, DJ KHALED!\nNah nah I'm a popstar.",
                trimLength: 35,
                textAlign: TextAlign.left,
                trimMode: TrimMode.Length,
                delimiter: '',
                moreStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
                lessStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
                trimCollapsedText: ' ... ' + 'more',
                trimExpandedText: '   less',
                style: TextStyle(
                    color: Theme.of(context).primaryColorDark,
                    fontSize: 14,
                    fontWeight: FontWeight.w300)),
          ),
          // Padding(
          //     padding: EdgeInsets.only(top: 2, left: 15, right: 15),
          //     child: RichText(
          //         text: TextSpan(children: [
          //       TextSpan(
          //           text: "gozel_85 ",
          //           style: TextStyle(
          //               color: Theme.of(context).primaryColorDark,
          //               fontSize: 15,
          //               fontWeight: FontWeight.w500)),
          //     ]))),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "View 76 comments",
              style: TextStyle(
                  color: Theme.of(context).primaryColorDark.withOpacity(0.5),
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Add a comment...",
                        style: TextStyle(
                            // color: white.withOpacity(0.5),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "😂",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "😍",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.add_circle,
                        //color: white.withOpacity(0.5),
                        size: 18,
                      )
                    ],
                  )
                ],
              )),
          SizedBox(
            height: 6,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "4 hours ago",
              style: TextStyle(
                  color: Theme.of(context).primaryColorDark.withOpacity(0.5),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
