import 'package:dr_words/viewmodels/home_viewmodel.dart';
import 'package:dr_words/widgets/base_model_widget.dart';
import 'package:dr_words/widgets/scaffold/custom_scaffold.dart';

/// Contains the widgets that will be used for Mobile layout of home,
/// portrait and landscape

import 'package:flutter/material.dart';

class HomeViewMobile extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return CustomScaffold(
      appBarText: model.appBarText,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () => model.beginSearch(context),
        ),
        PopupMenuButton<String>(
          onSelected: model.handlePopupMenuSelection,
          itemBuilder: (context) => model.popupMenuChoices
              .map(
                (choice) => PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
