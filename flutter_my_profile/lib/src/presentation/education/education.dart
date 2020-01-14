import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_profile/generated/i18n.dart';
import 'package:flutter_my_profile/src/presentation/customui/uility.dart';
import 'package:url_launcher/url_launcher.dart';

import '../customui/define.dart';
import '../customui/text_style.dart';

class EnducationInfo extends StatelessWidget {
  BuildContext _context;
  static final background = BoxDecoration(
    color: Colors.white.withAlpha(90),
  );

  Widget ntust() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            spreadRadius: 4,
            color: Color.fromARGB(20, 0, 0, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          isEnoughRoomForRow(MediaQuery.of(_context).size.width)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                        child: Text(
                      S.of(_context).education_ntust_schoolName,
                      style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_14,
                    )),
                    Flexible(
                      flex: 1,
                      child: Text(
                        S.of(_context).education_ntust_time,
                        style: NOTE_SAM_FONT_TEXT_STYLE_ITALIC_12,
                      ),
                    )
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      S.of(_context).education_ntust_schoolName,
                      textAlign: TextAlign.left,
                      style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_14,
                    ),
                    Text(
                      S.of(_context).education_ntust_time,
                      textAlign: TextAlign.left,
                      style: NOTE_SAM_FONT_TEXT_STYLE_ITALIC_12,
                    )
                  ],
                ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(S.of(_context).education_ntust_otherInfo,
                textAlign: TextAlign.left, style: NOTE_SAM_FONT_TEXT_STYLE_12),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(80),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  InkWell(
                    child: Text(S.of(_context).education_ntust_thesis,
                        textAlign: TextAlign.left,
                        style: NOTE_SAM_FONT_TEXT_STYLE_14),
                    onTap: () => launch(URL_IEEE_MY_PROFILE),
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: [
                      TextSpan(
                          text:
                              S.of(_context).education_ntust_IEEE_paper_1_title,
                          style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_12),
                      TextSpan(
                          text: S.of(_context).common_link,
                          style: NOTE_SAM_FONT_TEXT_STYLE_ITALIC_LINK,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launch(URL_IEEE_PAPER_1);
                            })
                    ]),
                  ),
                  Text(
                    S.of(_context).education_ntust_IEEE_paper_1_info,
                    textAlign: TextAlign.left,
                    style: NOTE_SAM_FONT_TEXT_STYLE_ITALIC_12,
                  ),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(children: [
                      TextSpan(
                          text:
                              S.of(_context).education_ntust_IEEE_paper_2_title,
                          style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_12),
                      TextSpan(
                          text: S.of(_context).common_link,
                          style: NOTE_SAM_FONT_TEXT_STYLE_ITALIC_LINK,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launch(URL_IEEE_PAPER_2);
                            })
                    ]),
                  ),
                  Text(
                    S.of(_context).education_ntust_IEEE_paper_2_info,
                    textAlign: TextAlign.left,
                    style: NOTE_SAM_FONT_TEXT_STYLE_ITALIC_12,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget yzu() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            spreadRadius: 4,
            color: Color.fromARGB(20, 0, 0, 0),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          isEnoughRoomForRow(MediaQuery.of(_context).size.width)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      S.of(_context).education_yzu_schoolName,
                      style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_14,
                    ),
                    Flexible(
                      child: Text(
                        S.of(_context).education_yzu_time,
                        style: NOTE_SAM_FONT_TEXT_STYLE_ITALIC_12,
                      ),
                    )
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      S.of(_context).education_yzu_schoolName,
                      textAlign: TextAlign.left,
                      style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_14,
                    ),
                    Text(
                      S.of(_context).education_yzu_time,
                      textAlign: TextAlign.left,
                      style: NOTE_SAM_FONT_TEXT_STYLE_ITALIC_12,
                    )
                  ],
                ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(S.of(_context).education_yzu_otherInfo,
                style: NOTE_SAM_FONT_TEXT_STYLE_12),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(top: 20),
        //decoration: background,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  S.of(context).education,
                  textAlign: TextAlign.left,
                  style: NOTE_SAM_FONT_TEXT_STYLE_WHITE_36,
                ),
              ),
              ntust(),
              yzu()
            ]));
  }
}
