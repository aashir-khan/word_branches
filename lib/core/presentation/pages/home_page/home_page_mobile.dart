import 'package:dr_words/core/presentation/viewmodels/home_viewmodel.dart';
import 'package:dr_words/core/presentation/widgets/base_model_widget.dart';

/// Contains the widgets that will be used for Mobile layout of home,
/// portrait and landscape

import 'package:flutter/material.dart';

class HomePageMobile extends BaseModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.appBarText),
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
      ),
    );
  }
}
