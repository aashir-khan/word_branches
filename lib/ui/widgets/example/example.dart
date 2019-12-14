import 'package:flutter/material.dart';

import '../../../responsive/orientation_layout.dart';
import '../../../responsive/screen_type_layout.dart';
import 'example_mobile.dart';
import 'example_tablet.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: ExampleMobilePortrait(),
        landscape: ExampleMobileLandscape(),
      ),
      tablet: OrientationLayout(
        portrait: ExampleTabletPortrait(),
        landscape: ExampleTabletLandscape(),
      ),
    );
  }
}
