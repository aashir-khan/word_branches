import 'package:dr_words/core/services/navigation_service.dart';
import 'package:dr_words/injection.dart';
import 'package:flutter/material.dart';
import 'package:dr_words/core/constants/routes_path.dart' as routes;

class HomeViewModel extends ChangeNotifier {
  final NavigationService navigationService = getIt<NavigationService>();

  String appBarText;
  List<String> popupMenuChoices;

  void initialise(BuildContext context) {
    appBarText = 'Favorites';

    popupMenuChoices = ['Settings', 'Help', 'About'];
  }

  Future<void> beginSearch(BuildContext context) async {
    await navigateToSearch();
  }

  void handlePopupMenuSelection(String choice) {
    // print(choice);
  }

  Future<void> navigateToSearch() async {
    await navigationService.navigateWithReplacement(routes.searchRoute);
  }
}
