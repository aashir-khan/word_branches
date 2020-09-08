import 'package:dr_words/injection.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = getIt<NavigationService>();

  void navigateToSearch() {
    _navigationService.replaceWith(Routes.searchView);
  }
}
