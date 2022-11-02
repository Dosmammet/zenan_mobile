import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zenan_2/pages/new_custom.dart';
import 'package:zenan_2/pages/try_again.dart';

import 'package:zenan_2/utils/next_screen.dart';
import '../../main.dart';
import 'main/home/homepage.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  AnimationController? _controller;

  Future basicFetch() async {}

  connectivityCheck() async {
    try {
      final result = await InternetAddress.lookup('ayterek.com.tm');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        basicFetch().then((value) => Future.delayed(
              Duration(),
            ).then((value) => gotoHomePage()));
      }
    } on SocketException catch (_) {
      Future.delayed(
        Duration(milliseconds: 2500),
      ).then((value) => tryAgainPage());
    }
  }

  gotoHomePage() {
    nextScreenReplace(context, NavbarNew());
  }

  tryAgainPage() {
    nextScreenReplace(context, const TryAgainPage());
  }

  @override
  void initState() {
    connectivityCheck();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: FutureBuilder(builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('BAZAR'),
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image(
                    image: AssetImage('assets/images/ayterek3.png'),
                    // color: Theme.of(context).primaryColorDark,
                    height: 200,
                    width: 200,
                    fit: BoxFit.contain,
                    // child: Text('BAZARRR'),
                  ),
                ),
                // SizedBox(
                //   height: 15.0,
                // ),
                SpinKitFadingCircle(
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: index.isEven ? Colors.red : Colors.green,
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        }
      }),
    );
  }
}
