import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_profile/src/presentation/customui/text_style.dart';
import 'package:flutter_my_profile/src/presentation/customui/uility.dart';
import 'package:flutter_my_profile/src/presentation/working/item_project.dart';
import 'package:flutter_my_profile/src/presentation/working/woking.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ItemWorking extends StatelessWidget {
  static final background = BoxDecoration(
    color: Colors.white.withAlpha(80),
  );

  final WorkingViewModel viewModel;

  const ItemWorking({Key key, this.viewModel}) : super(key: key);

  Widget renderProjectListView(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: viewModel.projectList.length,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        return ItemProject(viewModel: viewModel.projectList.elementAt(index));
      },
    );
  }

  Widget renderProjectStaggeredGridViewCount3(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      crossAxisCount: 3,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      itemCount: viewModel.projectList.length,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        return ItemProject(viewModel: viewModel.projectList.elementAt(index));
      },
      staggeredTileBuilder: (int index) {
        return StaggeredTile.fit(1);
      },
    );
  }

  Widget renderProject(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: isEnoughRoomForGrid_2(MediaQuery.of(context).size.width)
          ? renderProjectStaggeredGridViewCount3(context)
          : renderProjectListView(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
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
        children: <Widget>[
          isEnoughRoomForRow(MediaQuery.of(context).size.width)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      viewModel.companyName,
                      style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_16,
                    ),
                    Flexible(
                      child: Text(
                        viewModel.workingTime,
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
                      viewModel.companyName,
                      textAlign: TextAlign.left,
                      style: NOTE_SAM_FONT_TEXT_STYLE_BOLD_16,
                    ),
                    Text(
                      viewModel.workingTime,
                      textAlign: TextAlign.left,
                      style: NOTE_SAM_FONT_TEXT_STYLE_ITALIC_12,
                    )
                  ],
                ),
          SizedBox(
            width: double.infinity,
            child: Container(
              child: Text(
                viewModel.discription,
                textAlign: TextAlign.left,
                style: NOTE_SAM_FONT_TEXT_STYLE_12,
              ),
            ),
          ),
          renderProject(context)
        ],
      ),
    );
  }
}
