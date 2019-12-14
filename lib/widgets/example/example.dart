import 'package:dr_words/responsive/orientation_layout.dart';
import 'package:dr_words/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';

import 'example_mobile.dart';
import 'example_tablet.dart';

class Example extends StatelessWidget {
  Example({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: (context) => ExampleMobilePortrait(),
        landscape: (context) => ExampleMobileLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: (context) => ExampleTabletPortrait(),
        landscape: (context) => ExampleTabletLandscape(),
      ),
    );
  }
}
