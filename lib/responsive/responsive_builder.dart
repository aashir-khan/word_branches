import 'package:dr_words/responsive/sizing_information.dart';
import 'package:dr_words/utils/ui_utils.dart';
import 'package:flutter/material.dart';

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
          deviceScreenType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize:
              Size(boxConstraints.biggest.width, boxConstraints.biggest.height),
        );

        return builder(context, sizingInformation);
      }),
    );
  }
}
