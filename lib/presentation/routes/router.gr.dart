// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dr_words/presentation/pages/home/home_page.dart';
import 'package:dr_words/presentation/pages/search/search_page.dart';
import 'package:dr_words/presentation/pages/headword_entries/headword_entries_page.dart';
import 'package:dr_words/domain/core/entities/dictionary_word.dart';

class Routes {
  static const String homePage = '/';
  static const String searchPage = '/search-page';
  static const String headwordEntriesPage = '/headword-entries-page';
  static const all = <String>{
    homePage,
    searchPage,
    headwordEntriesPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.searchPage, page: SearchPage),
    RouteDef(Routes.headwordEntriesPage, page: HeadwordEntriesPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    SearchPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchPage(),
        settings: data,
      );
    },
    HeadwordEntriesPage: (RouteData data) {
      var args = data.getArgs<HeadwordEntriesPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HeadwordEntriesPage(args.wordSelected),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//HeadwordEntriesPage arguments holder class
class HeadwordEntriesPageArguments {
  final DictionaryWord wordSelected;
  HeadwordEntriesPageArguments({@required this.wordSelected});
}
