import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:zenan_2/models/post_model.dart';
import 'package:zenan_2/widgets/card_post.dart';

class PostDetail extends StatelessWidget {
  PostInfo _post1;
  PostDetail(@required this._post1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text('Posts'.tr),
      ),
      body: Column(
        children: [CardPost(_post1)],
      ),
    );
  }
}
