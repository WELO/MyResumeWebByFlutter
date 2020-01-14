import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_profile/generated/i18n.dart';
import 'package:flutter_my_profile/src/presentation/customui/text_style.dart';
import 'package:flutter_my_profile/src/presentation/working/item_project.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDialog extends StatelessWidget {
  final ProjectViewModel viewModel;
  final double photoW = 400.0;
  final double photoH = 300.0;

  ProjectDialog({
    @required this.viewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
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
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.centerRight,
            child: InkWell(
              child: Image(
                  width: 30,
                  height: 30,
                  image: AssetImage("res/assets/image/ic_close.png")),
              onTap: () => Navigator.pop(context),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  viewModel.coverImageUri.length > 0
                      ? Container(
                          width: double.infinity,
                          decoration: BoxDecoration(color: Colors.black),
                          child: new Image(
                            fit: BoxFit.contain,
                            height: 300,
                            image: AssetImage(viewModel.coverImageUri),
                          ),
                        )
                      : Container(),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      viewModel.projectName,
                      style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_16,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      viewModel.discription,
                      textAlign: TextAlign.left,
                      style: NOTE_SAM_FONT_TEXT_STYLE_12,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      S.of(context).common_skill,
                      textAlign: TextAlign.left,
                      style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_14,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      viewModel.skillInfo,
                      textAlign: TextAlign.left,
                      style: NOTE_SAM_FONT_TEXT_STYLE_12,
                    ),
                  ),
                  viewModel.projectUrl.length > 0
                      ? Container(
                          margin: EdgeInsets.only(top: 5),
                          child: InkWell(
                            child: Text(viewModel.projectUrlText,
                                textAlign: TextAlign.left,
                                style: NOTE_SAM_FONT_TEXT_STYLE_LINK),
                            onTap: () => launch(viewModel.projectUrl),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
