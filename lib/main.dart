import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

import 'package:example_flutter/view/title_screen.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(MaterialApp(
    title: 'Flutter presentation',
    theme: new ThemeData(
      fontFamily: 'Kaspersky',
      primaryColor: Color(0xff4BA590),
    ),
    home: TitleScreen(),
  ));
}
