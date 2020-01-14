import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_profile/generated/i18n.dart';
import 'package:flutter_my_profile/src/presentation/customui/text_style.dart';
import 'package:flutter_my_profile/src/presentation/working/item_project.dart';
import 'package:flutter_my_profile/src/presentation/working/item_working.dart';

import '../local_data.dart';

class WorkingInfo extends StatelessWidget {
  List<WorkingViewModel> workingData;

  static final background = BoxDecoration(
    color: Colors.white.withAlpha(90),
  );

  @override
  Widget build(BuildContext context) {
    workingData = LocalData(context).myWorkingList;
    return new Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 20),
      decoration: background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              S.of(context).working,
              textAlign: TextAlign.left,
              style: NOTE_SAM_FONT_TEXT_STYLE_36,
            ),
          ),
          new ListView.builder(
              shrinkWrap: true,
              itemCount: workingData.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  new ItemWorking(viewModel: workingData.elementAt(index))),
        ],
      ),
    );
  }
}

class WorkingViewModel {
  final String companyName;

  //在職時間
  final String workingTime;

  //相關說明
  final String discription;

  //相關專案
  final List<ProjectViewModel> projectList;

  const WorkingViewModel({
    this.companyName,
    this.workingTime,
    this.discription,
    this.projectList,
  });
}
