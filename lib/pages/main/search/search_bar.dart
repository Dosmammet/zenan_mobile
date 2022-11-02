import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:zenan_2/utils/flutx/fxcontainer.dart';
import 'package:zenan_2/utils/flutx/fxpacing.dart';
import 'package:zenan_2/utils/flutx/fxtextfield.dart';
import 'package:zenan_2/utils/flutx/fxtextstyle.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: FxTextField(
              autofocus: false,
              keyboardType: TextInputType.name,
              hintText: "Search",
              prefixIcon: Icon(
                FeatherIcons.search,
                size: 18,
                color: Colors.white,
              ),
              filled: true,
              isDense: true,
              fillColor: Colors.grey,
              hintStyle: FxTextStyle.b2(color: Colors.white),
              labelStyle: FxTextStyle.b2(color: Colors.white),
              style: FxTextStyle.b2(),
              textCapitalization: TextCapitalization.sentences,
              labelText: "Search",
              floatingLabelBehavior: FloatingLabelBehavior.never,
              cursorColor: Colors.white,
              focusedBorderColor: Colors.transparent,
            ),
          ),
          FxSpacing.width(16),
          //Space.width(16),
          FxContainer(
            color: Colors.grey,
            child: Transform.rotate(
              angle: 10 / 2,
              child: Icon(
                FeatherIcons.sliders,
                color: Colors.white,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
