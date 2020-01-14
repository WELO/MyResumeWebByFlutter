import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_profile/generated/i18n.dart';

import 'dialog_project.dart';
import '../customui/text_style.dart';

class ItemProject extends StatelessWidget {
  final ProjectViewModel viewModel;

  const ItemProject({Key key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 8),
      child: Card(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            viewModel.coverImageUri.length > 0
                ? Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(viewModel.coverImageUri),
                  )
                : Container(),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    viewModel.projectName,
                    style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_14,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      viewModel.discription,
                      softWrap: true,
                      textAlign: TextAlign.left,
                      style: NOTE_SAM_FONT_TEXT_STYLE_12,
                    ),
                  ),
                  InkWell(
                    child: Text(S.of(context).common_view_more,
                        textAlign: TextAlign.right,
                        style: NOTE_SAM_FONT_TEXT_STYLE_LINK),
                    onTap: () => showMySimpleDialog(context, viewModel),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void showMySimpleDialog(BuildContext context, ProjectViewModel viewModel) {
  showDialog(
      context: context,
      builder: (context) {
        return new ProjectDialog(viewModel: viewModel);
      });
}

class ProjectViewModel {
  //專案名稱
  final String projectName;

  //相關說明
  final String discription;

  //使用技術說明
  final String skillInfo;

  //封面圖示
  final String coverImageUri;

  //相關連結名稱
  final String projectUrlText;

  //相關連結
  final String projectUrl;

  const ProjectViewModel(
      {this.projectName,
      this.discription,
      this.skillInfo,
      this.coverImageUri,
      this.projectUrlText,
      this.projectUrl});
}
