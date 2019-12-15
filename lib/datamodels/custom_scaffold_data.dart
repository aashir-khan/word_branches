import 'package:flutter/material.dart';

class CustomScaffoldData {
  final String appBarText;
  final List<Widget> actions;
  final Widget body;
  final FloatingActionButton floatingActionButton;

  CustomScaffoldData({
    @required this.appBarText,
    actions,
    this.body,
    this.floatingActionButton,
  }) : actions = actions ?? const [];
}
