import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:zenan_2/pages/splashscreen.dart';
import 'package:zenan_2/utils/next_screen.dart';

class TryAgainPage extends StatefulWidget {
  const TryAgainPage({Key? key}) : super(key: key);

  @override
  _TryAgainPageState createState() => _TryAgainPageState();
}

class _TryAgainPageState extends State<TryAgainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("check_internet".tr),
              RaisedButton(
                child: Text("try_again".tr),
                onPressed: () => {
                  nextScreenReplace(context, SplashPage()),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
