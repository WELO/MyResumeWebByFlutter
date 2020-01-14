import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_my_profile/generated/i18n.dart';
import 'package:flutter_my_profile/src/presentation/customui/antd_icons.dart';
import 'package:flutter_my_profile/src/presentation/customui/define.dart';
import 'package:flutter_my_profile/src/presentation/customui/text_style.dart';
import 'package:flutter_my_profile/src/presentation/customui/uility.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  static final background = BoxDecoration(
    color: Colors.white.withAlpha(90),
  );

  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _messageController = new TextEditingController();

  BuildContext _context;

  Widget renderSendMessageToMe() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            S
                .of(_context)
                .contact_me_send_me_meaasge,
            textAlign: TextAlign.left,
            style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_16,
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              //controller: _nameController,
              autofocus: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid)),
                fillColor: Colors.transparent,
                filled: true,
                labelStyle: NOTE_SAM_FONT_TEXT_STYLE_GREY_14,
                labelText: S
                    .of(_context)
                    .contact_me_input_name_hint,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              //controller: _emailController,
              autofocus: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid)),
                fillColor: Colors.transparent,
                filled: true,
                labelStyle: NOTE_SAM_FONT_TEXT_STYLE_GREY_14,
                labelText: S
                    .of(_context)
                    .contact_me_input_email_hint,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              maxLines: 5,
              //controller: _messageController,
              autofocus: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid)),
                fillColor: Colors.transparent,
                filled: true,
                labelStyle: NOTE_SAM_FONT_TEXT_STYLE_GREY_14,
                labelText: S
                    .of(_context)
                    .contact_me_input_message_hint,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid)),
              ),
            ),
          ),
          RaisedButton(
            child: Text(S
                .of(_context)
                .contact_me_submit),
            onPressed: btnClickEvent,
            color: Colors.blueGrey[900],
            textColor: Colors.white,
          )
        ],
      ),
    );
  }

  Future<void> btnClickEvent() async {
    //TODO: implement send email
//    if (_emailController.text.length > 0 &&
//        _messageController.text.length > 0 &&
//        _nameController.text.length > 0) {
//      sendEmail1();
//    } else {
//      Toast.show(S.of(_context).contact_me_input_invalid, _context,
//          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
//    }
  }

  Future<void> sendEmail1() async {
    final Email email = Email(
      body: _nameController.text +
          "\n\n" +
          _emailController.text +
          "\n\n" +
          _messageController.text,
      subject: "resume web site message",
      recipients: ["amytang@yopmail.com"],
      isHTML: false,
    );

    await FlutterEmailSender.send(email).catchError((error) {
      Toast.show(error, _context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
    }).whenComplete(() {
      Toast.show(S
          .of(_context)
          .contact_me_submit_success, _context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
    });
  }

  Future<void> success() {
    Toast.show(S
        .of(_context)
        .contact_me_submit_success, _context,
        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
  }

  Widget renderRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 150),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                S
                    .of(_context)
                    .contact_me_my_info,
                textAlign: TextAlign.left,
                style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_16,
              ),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(AntdIcons.mail),
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        child: Text(
                          S
                              .of(_context)
                              .contact_me_email,
                          textAlign: TextAlign.center,
                          style: NOTE_SAM_FONT_TEXT_STYLE_12,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
            child: renderSendMessageToMe(),
          ),
        )
      ],
    );
  }

  Widget renderColumn() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            S
                .of(_context)
                .contact_me_my_info,
            textAlign: TextAlign.left,
            style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_16,
          ),
          Container(
              width: double.minPositive,
              margin: EdgeInsets.only(top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(AntdIcons.mail),
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 5, 0, 0),
                    child: Text(
                      S
                          .of(_context)
                          .contact_me_email,
                      textAlign: TextAlign.center,
                      style: NOTE_SAM_FONT_TEXT_STYLE_12,
                    ),
                  ),
                ],
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    launch(URL_GITHUB);
                  },
                  child: Image.network(
                    URL_IMAGE_GITHUB,
                    width: 30,
                    height: 30,
                  )),
              SizedBox(width: 5,),
              GestureDetector(
                  onTap: () {
                    launch(URL_LINKEDIN);
                  },
                  child: Image.network(
                    URL_IMAGE_LINKEDIN,
                    width: 35,
                    height: 35,
                  ))
            ],
          ),
          //renderSendMessageToMe()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
      decoration: background,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            S
                .of(context)
                .contact_me,
            textAlign: TextAlign.left,
            style: NOTE_SAM_FONT_TEXT_STYLE_36,
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              S
                  .of(context)
                  .contact_me_hint,
              textAlign: TextAlign.left,
              style: NOTE_SAM_FONT_TEXT_STYLE_14,
            ),
          ),
          //renderColumn()
          //isEnoughRoomForRow(MediaQuery.of(context).size.width)
          //? renderRow()
          //:
          renderColumn()
        ],
      ),
    );
  }
}
