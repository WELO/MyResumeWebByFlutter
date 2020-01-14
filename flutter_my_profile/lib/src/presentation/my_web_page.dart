import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_my_profile/generated/i18n.dart';
import 'package:flutter_my_profile/src/presentation/basic_introduction.dart';
import 'package:flutter_my_profile/src/presentation/skill/skill.dart';
import 'package:flutter_my_profile/src/presentation/web_title_bar.dart';
import 'package:flutter_my_profile/src/presentation/working/woking.dart';

import 'contact/contact_me.dart';
import 'education/education.dart';

// new
ValueChanged<Locale> localeChange;

// new
class MyWebPage extends StatefulWidget {
  @override
  _MyWebPage createState() => _MyWebPage();
}

class _MyWebPage extends State<MyWebPage> {
// new
  Locale _locale = const Locale("zh", "TW");

  @override
  void initState() {
    super.initState();
    localeChange = (locale) {
      setState(() {
        _locale = locale;
      });
    };
  }

// new
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "唐雪玲 - 個人履歷網站",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: Builder(
        builder: (BuildContext context) {
          return Localizations.override(
            context: context,
            locale: _locale,
            child: MyHomePage(title: 'Flutter Demo Home Page'),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Container(
          height: double.infinity,
          width: double.infinity,
          decoration: new BoxDecoration(
              backgroundBlendMode: BlendMode.color,
              color: Colors.blueGrey),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: new AppBar(
              title: new Text(S.of(context).title),
              backgroundColor: Colors.blueGrey[800],
              elevation: 0.0,
//              actions: <Widget>[
//                new PopupMenuButton(
//                    onSelected: (Locale value) {
//                      setState(() {
//                        localeChange(value);
//                      });
//                    },
//                    itemBuilder: (BuildContext context) =>
//                        <PopupMenuItem<Locale>>[
//                          new PopupMenuItem(
//                              value: Locale("en", ""),
//                              child: new Text(S.of(context).choose_EN)),
//                          new PopupMenuItem(
//                              value: Locale("zh", "TW"),
//                              child: new Text(S.of(context).choose_TW))
//                        ])
//              ],
            ),
            body: new Container(
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    WebTitleBar(),
                    BasicInfo(),
                    SkillInfo(),
                    WorkingInfo(),
                    EnducationInfo(),
                    ContactMe()
                  ],
                ),
              ),
            )),
      ],
    );
  }
}
