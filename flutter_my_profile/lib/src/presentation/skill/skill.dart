import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_profile/generated/i18n.dart';
import 'package:flutter_my_profile/src/presentation/local_data.dart';

import '../customui/text_style.dart';
import 'item_skill.dart';

class SkillInfo extends StatelessWidget {
  static final background = BoxDecoration(
    color: Colors.white.withAlpha(90),
  );

  @override
  Widget build(BuildContext context) {
    List<SkillViewModel> skillViewModels = LocalData(context).mySkillList;
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        //decoration: background,
        child: new Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                S.of(context).skill,
                textAlign: TextAlign.left,
                style: NOTE_SAM_FONT_TEXT_STYLE_WHITE_36,
              ),
            ),
            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: skillViewModels.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      ItemSkill(viewModel: skillViewModels.elementAt(index))),
            )
          ],
        ));
  }
}

class SkillViewModel {
  final String title;

  final String info;

  final Image icon;

  const SkillViewModel({
    this.title,
    this.info,
    this.icon,
  });
}
