import 'package:example_flutter/view/me_screen.dart';
import 'package:example_flutter/view/out_screen.dart';
import 'package:example_flutter/view/title_screen.dart';
import 'package:flutter/material.dart';

class Navigation {
  static void goToTitle(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TitleScreen()));
  }

  static void goToMe(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MeScreen()));
  }

  static void goToOut(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => OutScreen()));
  }
}
