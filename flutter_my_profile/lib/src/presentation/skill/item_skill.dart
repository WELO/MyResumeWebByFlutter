import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_profile/src/presentation/skill/skill.dart';

import '../customui/text_style.dart';

class ItemSkill extends StatelessWidget {
  static final background = BoxDecoration(
    color: Colors.white.withAlpha(80),
  );

  final SkillViewModel viewModel;

  const ItemSkill({Key key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            viewModel.title,
            textAlign: TextAlign.left,
            style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_16,
          ),
          Text(
            viewModel.info,
            textAlign: TextAlign.left,
            style: NOTE_SAM_FONT_TEXT_STYLE_12,
          ),
        ],
      ),
    );
  }
}
