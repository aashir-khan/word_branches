import 'package:dr_words/core/domain/entities/custom_scaffold_data.dart';
import 'package:dr_words/core/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'custom_scaffold_mobile.dart';

class CustomScaffold extends StatelessWidget {
  final String appBarText;
  final List<Widget> actions;
  final Widget body;

  CustomScaffold({
    Key key,
    @required this.appBarText,
    this.actions,
    this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: CustomScaffoldData(
        appBarText: appBarText,
        actions: actions,
        body: body,
      ),
      child: ScreenTypeLayout(
        mobile: CustomScaffoldMobile(),
      ),
    );
  }
}
