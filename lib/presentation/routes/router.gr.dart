// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/core/entities/dictionary_word.dart';
import '../pages/headword_entries/headword_entries_page.dart';
import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';

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
    HomePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    SearchPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchPage(),
        settings: data,
      );
    },
    HeadwordEntriesPage: (data) {
      var args = data.getArgs<HeadwordEntriesPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HeadwordEntriesPage(args.wordSelected),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HeadwordEntriesPage arguments holder class
class HeadwordEntriesPageArguments {
  final DictionaryWord wordSelected;
  HeadwordEntriesPageArguments({@required this.wordSelected});
}
