import 'package:dr_words/datamodels/example_item_data.dart';
import 'package:dr_words/responsive/orientation_layout.dart';
import 'package:dr_words/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'example_widget_mobile.dart';
import 'example_widget_tablet.dart';

class ExampleWidget extends StatelessWidget {
  final String text;
  const ExampleWidget({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: ExampleItemData(
        text: text,
      ),
      child: Container(
        color: Colors.red,
        child: ScreenTypeLayout(
          mobile: OrientationLayout(
            landscape: (context) => ExampleWidgetMobileLandscape(),
            portrait: (context) => ExampleWidgetMobilePortrait(),
          ),
          tablet: OrientationLayout(
            portrait: (context) => ExampleWidgetTabletPortrait(),
            landscape: (context) => ExampleWidgetMobilePortrait(),
          ),
        ),
      ),
    );
  }
}
