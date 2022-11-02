// @dart = 2.9

import 'dart:convert';

import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zenan_2/utils/colors.dart';
import 'package:zenan_2/widgets/card_insta.dart';
import 'package:readmore/readmore.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List pricelist = ['Sac renklemek', 'Sac kesmek', 'Gash aldyrmak'];

  List price = [600, 700, 250];

  void initState() {
    getnotes();
    super.initState();
  }

  Map<String, dynamic> _userdata;

  final _totalDots = 3;

  double _validPosition(double position) {
    if (position >= _totalDots) return 0;
    if (position < 0) return _totalDots - 1.0;
    return position;
  }

  void getnotes() async {
    final SharedPreferences localstorage =
        await SharedPreferences.getInstance();
    // userdata = localstorage.getString('user');
    String encodedMap = localstorage.getString('user');
    Map<String, dynamic> decodedMap = jsonDecode(encodedMap);
    print(decodedMap);
    _userdata = decodedMap;
    setState(() {});
  }

  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    //items.add((items.length + 1).toString());
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          title: Text(
            'gozel_85',
            style: TextStyle(color: Theme.of(context).primaryColorDark),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  AntIcons.plusCircleOutlined,
                  size: 30,
                  color: Theme.of(context).primaryColorDark,
                )),
            IconButton(onPressed: () {}, icon: Icon(AntIcons.menuOutlined))
          ],
        ),
        //drawer: Appdrawer(),
        body: SmartRefresher(
          enablePullDown: true,
          header: WaterDropHeader(),
          footer: CustomFooter(
            builder: (BuildContext context, LoadStatus mode) {
              Widget body;
              if (mode == LoadStatus.idle) {
                body = Text("pull up load");
              } else if (mode == LoadStatus.loading) {
                body = CupertinoActivityIndicator();
              } else if (mode == LoadStatus.failed) {
                body = Text("Load Failed!Click retry!");
              } else if (mode == LoadStatus.canLoading) {
                body = Text("release to load more");
              } else {
                body = Text("No more Data");
              }
              return Container(
                height: 55.0,
                child: Center(child: body),
              );
            },
          ),
          controller: _refreshController,
          onRefresh: _onRefresh,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    //decoration: BoxDecoration(border: Border.all()),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.005),
                                GestureDetector(
                                  // onTap: () {
                                  //   Navigator.of(context).push(
                                  //     MaterialPageRoute(
                                  //         builder: (context) => WelcomePage()),
                                  //   );
                                  // },
                                  child: Card(
                                    elevation: 7,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(29),
                                          bottom: Radius.circular(29)),
                                    ),
                                    child: Container(
                                      height: 110,
                                      width: MediaQuery.of(context).size.width *
                                          0.46,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(29),
                                              bottom: Radius.circular(29)),
                                          border: Border.all(
                                              color: kBackgroundColor,
                                              width: 2),
                                          color: kprofile1Color),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  '4.3',
                                                  style: TextStyle(
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize: 40,
                                                      color: kIconColor),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: kIconColor,
                                                  size: 40,
                                                )
                                              ],
                                            ),
                                          ),
                                          Text(
                                            'Overview (21)',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: kIconColor),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  // onTap: () {
                                  //   Navigator.of(context).push(
                                  //     MaterialPageRoute(
                                  //         builder: (context) => ClientsScreen()),
                                  //   );
                                  // },
                                  child: Card(
                                    elevation: 7,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(29),
                                          bottom: Radius.circular(29)),
                                    ),
                                    child: Container(
                                        height: 110,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.46,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: kBackgroundColor,
                                              width: 2),
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(29),
                                              bottom: Radius.circular(29)),
                                          color: kprofile2Color,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    '139',
                                                    style: TextStyle(
                                                        //fontWeight: FontWeight.bold,
                                                        fontSize: 40,
                                                        color: kIconColor),
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .supervisor_account_outlined,
                                                    color: kIconColor,
                                                    size: 40,
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Clients',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: kIconColor),
                                              )
                                            ],
                                          ),
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.005),
                                GestureDetector(
                                  // onTap: () {
                                  //   Navigator.of(context).push(
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             MushderiProfile()),
                                  //   );
                                  // },
                                  child: Card(
                                    elevation: 7,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(29),
                                          bottom: Radius.circular(29)),
                                    ),
                                    child: Container(
                                      height: 110,
                                      width: MediaQuery.of(context).size.width *
                                          0.46,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: kBackgroundColor,
                                              width: 2),
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(29),
                                              bottom: Radius.circular(29)),
                                          color: kprofile3Color),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.home,
                                                  color: kIconColor,
                                                ),
                                                Text(
                                                  'Turkmenbashy',
                                                  style: TextStyle(
                                                      color: kIconColor),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.call_rounded,
                                                  color: kIconColor,
                                                ),
                                                Text(
                                                  '+99364142354',
                                                  style: TextStyle(
                                                      color: kIconColor),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  // onTap: () {
                                  //   Navigator.of(context).push(
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             BioScreen(_userdata)),
                                  //   );
                                  // },
                                  child: Card(
                                    elevation: 7,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(29),
                                          bottom: Radius.circular(29)),
                                    ),
                                    child: Container(
                                      height: 110,
                                      width: MediaQuery.of(context).size.width *
                                          0.46,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: kBackgroundColor,
                                              width: 2),
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(29),
                                              bottom: Radius.circular(29)),
                                          color: kprofile4Color),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 50,
                                                ),
                                                Icon(
                                                  Icons.account_circle_rounded,
                                                  color: kIconColor,
                                                  size: 20,
                                                ),
                                                Text(
                                                  _userdata == null
                                                      ? ''
                                                      : _userdata['username'],
                                                  style: TextStyle(
                                                      color: kIconColor),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              _userdata == null
                                                  ? ''
                                                  : _userdata['name'],
                                              style: TextStyle(
                                                  color: kIconColor,
                                                  fontSize: 20),
                                            ),
                                            Text(
                                              'Hairstyle/Eyebrow',
                                              style: TextStyle(
                                                color: kIconColor,
                                              ),
                                            ),
                                            Container(
                                              height: 20,
                                              child: FlatButton(
                                                  height: 10,
                                                  onPressed: () {},
                                                  child: Text(
                                                    'Bio Read...',
                                                    style: TextStyle(
                                                        color: kIconColor,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width * 0.4,
                          top: 80,
                          child:
                              //  CircleAvatar(
                              //     radius: 40,
                              //     backgroundImage: AssetImage('assets/images/gash.jpg'),
                              //  ),
                              Container(
                            width: 70,
                            height: 70,
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
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gozel Shagulyyeva',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      ReadMoreText(
                          'CEO of "Peykam" haistyle studio\nShmoney talk sat it of and choke we gonaa do dis happen',
                          trimLength: 25,
                          textAlign: TextAlign.left,
                          trimMode: TrimMode.Length,
                          delimiter: '',
                          moreStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                          lessStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                          trimCollapsedText: ' ... ' + 'More',
                          trimExpandedText: '\n' + 'Less',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).primaryColorDark,
                            fontSize: 13,
                          )),
                    ],
                  ),
                ),
                Divider(),
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 0.5,
                      //mainAxisExtent: 250,
                      crossAxisSpacing: 0.5,
                      crossAxisCount: 3,
                    ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          //Get.to(PostDetail(posts[index]));
                        },
                        child: Container(
                          child: Image.network(
                            'https://cdn.theculturetrip.com/wp-content/uploads/2018/10/rexfeatures_9889917k-650x437.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ));
  }
}
