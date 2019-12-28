import 'package:flutter/material.dart';

import 'constants/routes_path.dart' as routes;
import 'views/home/home_view.dart';
import 'views/search/search_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.HomeRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case routes.SearchRoute:
      return MaterialPageRoute(builder: (context) => SearchView());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}
