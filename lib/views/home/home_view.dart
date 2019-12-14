import 'package:dr_words/responsive/orientation_layout.dart';
import 'package:dr_words/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';

import 'home_view_mobile.dart';
import 'home_view_tablet.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: (context) => HomeMobilePortrait(),
        landscape: (context) => HomeMobileLandscape(),
      ),
      tablet: HomeViewTablet(),
    );
  }
}
