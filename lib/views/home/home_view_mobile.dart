import '../../widgets/example/example_mobile.dart';

/// Contains the widgets that will be used for Mobile layout of home,
/// portrait and landscape

import 'package:flutter/material.dart';

class HomeMobilePortrait extends StatelessWidget {
  HomeMobilePortrait({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ExampleMobilePortrait());
  }
}

class HomeMobileLandscape extends StatelessWidget {
  const HomeMobileLandscape({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ExampleMobileLandscape());
  }
}
