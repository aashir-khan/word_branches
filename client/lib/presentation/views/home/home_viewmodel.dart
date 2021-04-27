import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:word_branches/presentation/routes/app_pages.dart';

class HomeViewModel extends BaseViewModel {
  void navigateToSearch() {
    Get.offNamed(Routes.searchView);
  }
}
