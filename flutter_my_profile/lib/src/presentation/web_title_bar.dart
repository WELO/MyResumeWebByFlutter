import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_profile/generated/i18n.dart';
import 'package:simple_animations/simple_animations.dart';

import 'customui/custom_ui.dart';

class WebTitleBar extends StatelessWidget {
  static final boxDecoration = BoxDecoration(
    color: Colors.white.withAlpha(80),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        new Container(
          height: 400,
          width: double.infinity,
          decoration: new BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("res/assets/image/basic_background.jpg")
//                image: NetworkImage(
//                    "https://images.unsplash.com/photo-1501075194766-25dad883d9ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1558&q=80")
            ),
          ),
        ),
        new Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 100),
          child: new ControlledAnimation(
            duration: Duration(milliseconds: 1200),
            delay: Duration(milliseconds: 500),
            tween: Tween(begin: 2.0, end: 400.0),
            builder: (context, width) {
              return new Container(
                alignment: Alignment.center,
                decoration: boxDecoration,
                width: width,
                height: 200,
                child: isEnoughRoomForTypewriter(width)
                    ? new TypewriterText(S.of(context).hello_text)
                    : Container(),
              );
            },
          ),
        )
      ],
    );
  }

  onBottom(Widget child) => Positioned.fill(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: child,
    ),
  );

  isEnoughRoomForTypewriter(width) => width > 50;
}