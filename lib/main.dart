import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

import 'package:flutter_presentation/view/title_screen.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(MaterialApp(
    title: 'Flutter presentation',
    theme: ThemeData(
      fontFamily: 'Kaspersky',
      primaryColor: const Color(0xff4BA590),
    ),
    home: const TitleScreen(),
  ));
}
