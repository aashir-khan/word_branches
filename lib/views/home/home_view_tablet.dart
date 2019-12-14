import 'package:flutter/material.dart';

import '../../widgets/example/example_tablet.dart';

class HomeViewTablet extends StatelessWidget {
  const HomeViewTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.landscape
          ? ExampleTabletLandscape()
          : ExampleTabletPortrait(),
    );
  }
}
