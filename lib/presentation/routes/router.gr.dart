// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/core/entities/dictionary_word.dart';
import '../../domain/dictionary_word_entries/entities/headword_entry.dart';
import '../../domain/dictionary_word_entries/entities/sense.dart';
import '../pages/headword_entries/headword_entries_page.dart';
import '../pages/headword_entry_details/headword_entry_details_page.dart';
import '../pages/home/home_page.dart';
import '../pages/search/search_page.dart';
import '../pages/subsense_details/subsense_details_page.dart';

class Routes {
  static const String homePage = '/';
  static const String searchPage = '/search-page';
  static const String headwordEntriesPage = '/headword-entries-page';
  static const String headwordEntryDetailsPage = '/headword-entry-details-page';
  static const String subsenseDetailsPage = '/subsense-details-page';
  static const all = <String>{
    homePage,
    searchPage,
    headwordEntriesPage,
    headwordEntryDetailsPage,
    subsenseDetailsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.searchPage, page: SearchPage),
    RouteDef(Routes.headwordEntriesPage, page: HeadwordEntriesPage),
    RouteDef(Routes.headwordEntryDetailsPage, page: HeadwordEntryDetailsPage),
    RouteDef(Routes.subsenseDetailsPage, page: SubsenseDetailsPage),
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
      final args = data.getArgs<SearchPageArguments>(
        orElse: () => SearchPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchPage(
          key: args.key,
          cachedWord: args.cachedWord,
        ),
        settings: data,
      );
    },
    HeadwordEntriesPage: (data) {
      final args = data.getArgs<HeadwordEntriesPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HeadwordEntriesPage(args.wordSelected),
        settings: data,
      );
    },
    HeadwordEntryDetailsPage: (data) {
      final args =
          data.getArgs<HeadwordEntryDetailsPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HeadwordEntryDetailsPage(
          headwordEntry: args.headwordEntry,
          parentSense: args.parentSense,
        ),
        settings: data,
      );
    },
    SubsenseDetailsPage: (data) {
      final args = data.getArgs<SubsenseDetailsPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => SubsenseDetailsPage(
          key: args.key,
          headwordEntry: args.headwordEntry,
          subsenses: args.subsenses,
          parentSenseDefinition: args.parentSenseDefinition,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// SearchPage arguments holder class
class SearchPageArguments {
  final Key key;
  final DictionaryWord cachedWord;
  SearchPageArguments({this.key, this.cachedWord});
}

/// HeadwordEntriesPage arguments holder class
class HeadwordEntriesPageArguments {
  final DictionaryWord wordSelected;
  HeadwordEntriesPageArguments({@required this.wordSelected});
}

/// HeadwordEntryDetailsPage arguments holder class
class HeadwordEntryDetailsPageArguments {
  final HeadwordEntry headwordEntry;
  final Sense parentSense;
  HeadwordEntryDetailsPageArguments(
      {@required this.headwordEntry, this.parentSense});
}

/// SubsenseDetailsPage arguments holder class
class SubsenseDetailsPageArguments {
  final Key key;
  final HeadwordEntry headwordEntry;
  final KtList<Sense> subsenses;
  final String parentSenseDefinition;
  SubsenseDetailsPageArguments(
      {this.key,
      @required this.headwordEntry,
      @required this.subsenses,
      @required this.parentSenseDefinition});
}
