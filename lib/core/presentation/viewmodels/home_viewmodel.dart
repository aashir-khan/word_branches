import 'package:dr_words/core/services/navigation_service.dart';
import 'package:dr_words/injection/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:dr_words/core/constants/routes_path.dart' as routes;

class HomeViewModel extends ChangeNotifier {
  final navigationService = sl<NavigationService>();

  String appBarText;
  List<String> popupMenuChoices;

  void initialise(BuildContext context) {
    appBarText = 'Favorites';

    popupMenuChoices = ['Settings', 'Help', 'About'];
  }

  void beginSearch(context) async {
    this.navigateToSearch();
  }

  void handlePopupMenuSelection(String choice) {
    // print(choice);
  }

  void navigateToSearch() {
    // navigationService.navigateTo(routes.SearchRoute);
    navigationService.navigateWithReplacement(routes.SearchRoute);
  }
}
