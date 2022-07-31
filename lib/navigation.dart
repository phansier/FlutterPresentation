import 'package:flutter_presentation/view/me_screen.dart';
import 'package:flutter_presentation/view/out_screen.dart';
import 'package:flutter_presentation/view/title_screen.dart';
import 'package:flutter/material.dart';

class Navigation {
  static void goToTitle(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const TitleScreen()));
  }

  static void goToMe(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MeScreen()));
  }

  static void goToOut(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const OutScreen()));
  }
}
