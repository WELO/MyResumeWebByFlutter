import 'package:flutter/cupertino.dart';
import 'package:flutter_my_profile/generated/i18n.dart';
import 'package:flutter_my_profile/src/presentation/skill/skill.dart';
import 'package:flutter_my_profile/src/presentation/working/item_project.dart';
import 'package:flutter_my_profile/src/presentation/working/woking.dart';

import 'working/item_project.dart';

class LocalData {
  final BuildContext _context;
  List<WorkingViewModel> _myWorkingList;

  List<SkillViewModel> _mySkillList;

  List<SkillViewModel> get mySkillList => _mySkillList;

  List<WorkingViewModel> get myWorkingList => _myWorkingList;

  LocalData(this._context) {
    _mySkillList = [
      SkillViewModel(
          title: S.of(_context).programming_language_JAVA,
          info: S.of(_context).programming_language_JAVA_info),
      SkillViewModel(
          title: S.of(_context).programming_language_other_lang,
          info: S.of(_context).programming_language_other_info),
      SkillViewModel(
          title: S.of(_context).language_ability,
          info: S.of(_context).language_ability_info),
    ];

    _myWorkingList = [
      WorkingViewModel(
          companyName: S.of(_context).working_gemteks,
          workingTime: S.of(_context).working_gemteks_time,
          discription: S.of(_context).working_gemteks_info,
          projectList: [
            ProjectViewModel(
                projectName: S.of(_context).project_gemtek_1_name,
                discription: S.of(_context).project_gemtek_1_info,
                skillInfo: S.of(_context).project_gemtek_1_skill,
                coverImageUri: S.of(_context).project_gemtek_1_image_cover,
                projectUrl: "",
                projectUrlText: ""),
            ProjectViewModel(
                projectName: S.of(_context).project_gemtek_2_name,
                discription: S.of(_context).project_gemtek_2_info,
                skillInfo: S.of(_context).project_gemtek_2_skill,
                coverImageUri: S.of(_context).project_gemtek_2_image_cover,
                projectUrl: "",
                projectUrlText: ""),
            ProjectViewModel(
                projectName: S.of(_context).project_gemtek_3_name,
                discription: S.of(_context).project_gemtek_3_info,
                skillInfo: S.of(_context).project_gemtek_3_skill,
                coverImageUri: S.of(_context).project_gemtek_3_image_cover,
                projectUrl: "",
                projectUrlText: ""),
            ProjectViewModel(
                projectName: S.of(_context).project_gemtek_4_name,
                discription: S.of(_context).project_gemtek_4_info,
                skillInfo: S.of(_context).project_gemtek_4_skill,
                coverImageUri: S.of(_context).project_gemtek_4_image_cover,
                projectUrl: "",
                projectUrlText: ""),
            ProjectViewModel(
                projectName: S.of(_context).project_gemtek_5_name,
                discription: S.of(_context).project_gemtek_5_info,
                skillInfo: S.of(_context).project_gemtek_5_skill,
                coverImageUri: S.of(_context).project_gemtek_5_image_cover,
                projectUrl: S.of(_context).project_gemtek_5_url,
                projectUrlText: S.of(_context).project_gemtek_5_url_text),
            ProjectViewModel(
                projectName: S.of(_context).project_gemtek_6_name,
                discription: S.of(_context).project_gemtek_6_info,
                skillInfo: S.of(_context).project_gemtek_6_skill,
                coverImageUri: S.of(_context).project_gemtek_6_image_cover,
                projectUrl: "",
                projectUrlText: ""),
            ProjectViewModel(
                projectName: S.of(_context).project_gemtek_7_name,
                discription: S.of(_context).project_gemtek_7_info,
                skillInfo: S.of(_context).project_gemtek_7_skill,
                coverImageUri: S.of(_context).project_gemtek_7_image_cover,
                projectUrl: "",
                projectUrlText: ""),
            ProjectViewModel(
                projectName: S.of(_context).project_gemtek_8_name,
                discription: S.of(_context).project_gemtek_8_info,
                skillInfo: S.of(_context).project_gemtek_8_skill,
                coverImageUri: S.of(_context).project_gemtek_8_image_cover,
                projectUrl: "",
                projectUrlText: ""),
            ProjectViewModel(
                projectName: S.of(_context).project_gemtek_9_name,
                discription: S.of(_context).project_gemtek_9_info,
                skillInfo: S.of(_context).project_gemtek_9_skill,
                coverImageUri: S.of(_context).project_gemtek_9_image_cover,
                projectUrl: "",
                projectUrlText: ""),
          ]),
      WorkingViewModel(
          companyName: S.of(_context).working_sinica,
          workingTime: S.of(_context).working_sinica_time,
          discription: S.of(_context).working_sinica_info,
          projectList: [
            ProjectViewModel(
                projectName: S.of(_context).project_sinica_name,
                discription: S.of(_context).project_sinica_info,
                skillInfo: S.of(_context).project_sinica_skill,
                coverImageUri: S.of(_context).project_sinica_image_cover,
                projectUrl: "",
                projectUrlText: "")
          ]),
      WorkingViewModel(
          companyName: S.of(_context).working_other_project,
          workingTime: "",
          discription: S.of(_context).working_other_project_info,
          projectList: [
            ProjectViewModel(
                projectName: S.of(_context).project_ntust_1_name,
                discription: S.of(_context).project_ntust_1_info,
                skillInfo: S.of(_context).project_ntust_1_skill,
                coverImageUri: S.of(_context).project_ntust_1_image_cover,
                projectUrl: "",
                projectUrlText: ""),
            ProjectViewModel(
                projectName: S.of(_context).project_ntust_2_name,
                discription: S.of(_context).project_ntust_2_info,
                skillInfo: S.of(_context).project_ntust_2_skill,
                coverImageUri: S.of(_context).project_ntust_2_image_cover,
                projectUrl: "",
                projectUrlText: ""),
            ProjectViewModel(
                projectName: S.of(_context).project_other_1_name,
                discription: S.of(_context).project_other_1_info,
                skillInfo: S.of(_context).project_other_1_skill,
                coverImageUri: S.of(_context).project_other_1_image_cover,
                projectUrl: S.of(_context).project_other_1_url,
                projectUrlText: S.of(_context).project_other_1_url_text),
            ProjectViewModel(
                projectName: S.of(_context).project_other_2_name,
                discription: S.of(_context).project_other_2_info,
                skillInfo: S.of(_context).project_other_2_skill,
                coverImageUri: S.of(_context).project_other_2_image_cover,
                projectUrl: "",
                projectUrlText: ""),
            ProjectViewModel(
                projectName: S.of(_context).project_other_3_name,
                discription: S.of(_context).project_other_3_info,
                skillInfo: S.of(_context).project_other_3_skill,
                coverImageUri: S.of(_context).project_other_3_image_cover,
                projectUrl: S.of(_context).project_other_3_url,
                projectUrlText: S.of(_context).project_other_3_url_text),
          ]),
    ];
  }
}
