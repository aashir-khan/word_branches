import 'package:dr_words/core/utils/ui_utils.dart' as utils;
import 'package:flutter/material.dart';

import 'sizing_information.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    SizingInformation sizingInformation,
  ) builder;
  const ResponsiveBuilder({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, boxConstraints) {
        var mediaQuery = MediaQuery.of(context);

        var sizingInformation = SizingInformation(
          deviceScreenType: utils.getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize:
              Size(boxConstraints.biggest.width, boxConstraints.biggest.height),
        );

        return builder(context, sizingInformation);
      }),
    );
  }
}
