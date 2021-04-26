import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../injection.dart';
import '../../routes/router.gr.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = getIt<NavigationService>();

  void navigateToSearch() {
    _navigationService.replaceWith(Routes.searchView);
  }
}
