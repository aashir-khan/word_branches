import 'package:dr_words/widgets/example/example_mobile.dart';
import 'package:dr_words/widgets/example/example_tablet.dart';
import 'package:flutter/material.dart';

import '../../../responsive/orientation_layout.dart';
import '../../../responsive/screen_type_layout.dart';

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
