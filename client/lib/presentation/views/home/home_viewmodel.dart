import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:word_branches/presentation/router/app_router.router.dart';

import '../../../injection.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = getIt<NavigationService>();

  void navigateToSearch() {
    _navigationService.replaceWith(Routes.searchView);
  }
}
