import 'package:dr_words/core/services/navigation/navigation_service.dart';

class FakeNavigationService implements NavigationService {
  @override
  bool goBack() {
    return true;
  }

  @override
  Future navigateTo(String routeName, {arguments}) {
    return Future.delayed(Duration(seconds: 1));
  }
}
