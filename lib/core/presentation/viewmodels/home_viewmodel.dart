import 'package:auto_route/auto_route.dart';
import 'package:dr_words/core/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  String appBarText;
  List<String> popupMenuChoices;

  void initialise(BuildContext context) {
    appBarText = 'Favorites';

    popupMenuChoices = ['Settings', 'Help', 'About'];
  }

  Future<void> beginSearch(BuildContext context) async {
    await navigateToSearch(context);
  }

  void handlePopupMenuSelection(String choice) {
    // print(choice);
  }

  Future<void> navigateToSearch(BuildContext context) async {
    await ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(Routes.searchPage);
  }
}
