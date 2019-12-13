import 'package:flutter/material.dart';

import '../widgets/base_responsive_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseResponsiveWidget(builder: (context, sizingInformation) {
      return Scaffold(
          body: Center(
        child: Text(sizingInformation.toString()),
      ));
    });
  }
}
