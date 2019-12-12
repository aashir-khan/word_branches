abstract class NavigationService {
  Future<dynamic> navigateTo(String routeName, {dynamic arguments});

  bool goBack();
}
