import 'package:dr_words/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/routes_path.dart' as routes;
import 'features/query_search/presentation/bloc/query_search_bloc.dart';
import 'features/query_search/presentation/pages/search_page.dart';
import 'views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.HomeRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case routes.SearchRoute:
      return MaterialPageRoute(
          builder: (context) => BlocProvider(
                create: (_) => locator<QuerySearchBloc>(),
                child: SearchPage(),
              ));
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
