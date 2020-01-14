import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_profile/generated/i18n.dart';
import 'package:flutter_my_profile/src/presentation/customui/uility.dart';

import 'customui/text_style.dart';

class BasicInfo extends StatelessWidget {
  static final background = BoxDecoration(
    color: Colors.white.withAlpha(90),
  );
  static final photo = Container(
      width: 100,
      height: 100,
      decoration: new BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage("assets/image/my_photo.JPG")),
      ));

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(top: 20),
        decoration: background,
        child: Column(
          children: <Widget>[
            isEnoughRoomForRow(MediaQuery.of(context).size.width)
                ? Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage("res/assets/image/my_photo.JPG"),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Text(S.of(context).introduction,
                              style: NOTE_SAM_FONT_TEXT_STYLE_14),
                        ),
                      )
                    ],
                  )
                : Column(
                    children: <Widget>[
                      Image(image: AssetImage("res/assets/image/my_photo.JPG")),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(S.of(context).introduction,
                            style: NOTE_SAM_FONT_TEXT_STYLE_14),
                      )
                    ],
                  ),
          ],
        ));
  }
}
