import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zenan_2/models/fason_model.dart';
import 'package:zenan_2/utils/cached_image.dart';

class CardFason1 extends StatelessWidget {
  final FasonInfo fason;
  final String heroTag;

  const CardFason1({Key? key, required this.fason, required this.heroTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final dateApi = DateTime.parse(fason.created_at).toLocal();
    // String formattedDate = DateFormat('dd-MM-yyyy').format(dateApi);
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          //height: 120,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColorLight,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 4.0),
                blurRadius: 10.0,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                // decoration: BoxDecoration(
                //   borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(10.0),
                //     topRight: Radius.circular(10.0),
                //   ),
                // ),
                child: Hero(
                    tag: heroTag,
                    child: CustomCacheImage(
                        imageUrl: fason.images[0], radius: 5.0)),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 10, top: 10),
              //   child: Text(
              //     fason.id.toString(),
              //     style: TextStyle(fontSize: 14.0),
              //   ),
              // ),
              // Positioned(
              //   child: Container(
              //     height: 40,
              //     child: Padding(
              //       padding: EdgeInsets.only(
              //         // top: MediaQuery.of(context).size.width / 15,
              //         left: MediaQuery.of(context).size.width / 4.2,
              //       ),
              //       child: Row(
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: <Widget>[
              //           Icon(
              //             Icons.remove_red_eye_outlined,
              //             color: Theme.of(context).secondaryHeaderColor,
              //             size: 20,
              //           ),
              //           const SizedBox(
              //             width: 5,
              //           ),
              //           Text(fason.view.toString(),
              //               style: TextStyle(
              //                   color: Theme.of(context).secondaryHeaderColor,
              //                   fontSize: 13)),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      onTap: () {},
    );
  }
}
