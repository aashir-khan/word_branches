// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dr_words/core/presentation/pages/home_page/home_page.dart';
import 'package:dr_words/features/query_search/presentation/pages/search_page.dart';
import 'package:dr_words/features/word_details/presentation/pages/headword_entries_page.dart';
import 'package:dr_words/core/domain/entities/dictionary_word.dart';

abstract class Routes {
  static const homePage = '/';
  static const searchPage = '/search-page';
  static const headwordEntriesPage = '/headword-entries-page';
  static const all = {
    homePage,
    searchPage,
    headwordEntriesPage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomePage(),
          settings: settings,
        );
      case Routes.searchPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SearchPage(),
          settings: settings,
        );
      case Routes.headwordEntriesPage:
        if (hasInvalidArgs<HeadwordEntriesPageArguments>(args,
            isRequired: true)) {
          return misTypedArgsRoute<HeadwordEntriesPageArguments>(args);
        }
        final typedArgs = args as HeadwordEntriesPageArguments;
        return MaterialPageRoute<dynamic>(
          builder: (context) => HeadwordEntriesPage(typedArgs.wordSelected),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//HeadwordEntriesPage arguments holder class
class HeadwordEntriesPageArguments {
  final DictionaryWord wordSelected;
  HeadwordEntriesPageArguments({@required this.wordSelected});
}
