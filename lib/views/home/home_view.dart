import 'package:dr_words/responsive/orientation_layout.dart';
import 'package:dr_words/responsive/screen_type_layout.dart';
import 'package:dr_words/viewmodels/home_viewmodel.dart';
import 'package:dr_words/widgets/base_widget.dart';
import 'package:dr_words/widgets/example_widget/example_widget.dart';
import 'package:flutter/material.dart';

import 'home_view_mobile.dart';
import 'home_view_tablet.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) => model.initialise(),
      child: ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: (context) => HomeMobilePortrait(),
          landscape: (context) => HomeMobileLandscape(),
        ),
        tablet: OrientationLayout(
          portrait: (context) => HomeTabletPortrait(),
          landscape: (context) => HomeTabletLandscape(),
        ),
      ),
    );
  }

  static List<Widget> getExampleWidgetList() {
    return [
      ExampleWidget(
        text: 'I am a widget and I have data from a parent view component 1',
      ),
      ExampleWidget(
        text: 'I am a widget and I have data from a parent view component 2',
      ),
      ExampleWidget(
        text: 'I am a widget and I have data from a parent view component 3',
      ),
      ExampleWidget(
        text: 'I am a widget and I have data from a parent view component 4',
      ),
    ];
  }
}
