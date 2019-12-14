import 'package:dr_words/responsive/responsive_builder.dart';
import 'package:dr_words/viewmodels/home_viewmodel.dart';
import 'package:dr_words/views/home/home_view.dart';
import 'package:dr_words/widgets/base_model_widget.dart';

/// Contains the widgets that will be used for Tablet layout of home,
/// portrait and landscape

import 'package:flutter/material.dart';

class HomeTabletPortrait extends BaseModelWidget<HomeViewModel> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          model.updateTitle();
        },
      ),
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(model.title),
              ...HomeView.getExampleWidgetList()
            ],
          );
        },
      ),
    );
  }
}

class HomeTabletLandscape extends BaseModelWidget<HomeViewModel> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          model.updateTitle();
        },
      ),
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(model.title),
              ...HomeView.getExampleWidgetList()
            ],
          );
        },
      ),
    );
  }
}
