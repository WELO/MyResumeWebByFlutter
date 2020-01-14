import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_my_profile/src/presentation/my_web_page.dart';
import 'package:orientation/orientation.dart';

void main() {
  OrientationPlugin.forceOrientation(DeviceOrientation.landscapeLeft);
  runApp(MyWebPage());
}
