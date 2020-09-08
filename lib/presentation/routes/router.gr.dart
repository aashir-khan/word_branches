// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/core/entities/word_search.dart';
import '../../domain/dictionary_word_entries/entities/headword_entry.dart';
import '../../domain/dictionary_word_entries/entities/lexical_entry.dart';
import '../../domain/dictionary_word_entries/entities/sense.dart';
import '../views/headword_entries/headword_entries_view.dart';
import '../views/home/home_view.dart';
import '../views/lexical_entry/lexical_entry_view.dart';
import '../views/search/search_view.dart';
import '../views/subsense_details/subsense_details_view.dart';

class Routes {
  static const String homeView = '/';
  static const String searchView = '/search-view';
  static const String headwordEntriesView = '/headword-entries-view';
  static const String lexicalEntryView = '/lexical-entry-view';
  static const String subsenseDetailsView = '/subsense-details-view';
  static const all = <String>{
    homeView,
    searchView,
    headwordEntriesView,
    lexicalEntryView,
    subsenseDetailsView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.searchView, page: SearchView),
    RouteDef(Routes.headwordEntriesView, page: HeadwordEntriesView),
    RouteDef(Routes.lexicalEntryView, page: LexicalEntryView),
    RouteDef(Routes.subsenseDetailsView, page: SubsenseDetailsView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    SearchView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchView(),
        settings: data,
      );
    },
    HeadwordEntriesView: (data) {
      final args = data.getArgs<HeadwordEntriesViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HeadwordEntriesView(wordSearch: args.wordSearch),
        settings: data,
      );
    },
    LexicalEntryView: (data) {
      final args = data.getArgs<LexicalEntryViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => LexicalEntryView(
          headwordEntry: args.headwordEntry,
          lexicalEntry: args.lexicalEntry,
          headwordEntryNumber: args.headwordEntryNumber,
        ),
        settings: data,
      );
    },
    SubsenseDetailsView: (data) {
      final args = data.getArgs<SubsenseDetailsViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => SubsenseDetailsView(
          key: args.key,
          headwordEntry: args.headwordEntry,
          subsenses: args.subsenses,
          parentSenseDefinition: args.parentSenseDefinition,
          headwordEntryNumber: args.headwordEntryNumber,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HeadwordEntriesView arguments holder class
class HeadwordEntriesViewArguments {
  final WordSearch wordSearch;
  HeadwordEntriesViewArguments({@required this.wordSearch});
}

/// LexicalEntryView arguments holder class
class LexicalEntryViewArguments {
  final HeadwordEntry headwordEntry;
  final LexicalEntry lexicalEntry;
  final int headwordEntryNumber;
  LexicalEntryViewArguments(
      {@required this.headwordEntry,
      @required this.lexicalEntry,
      @required this.headwordEntryNumber});
}

/// SubsenseDetailsView arguments holder class
class SubsenseDetailsViewArguments {
  final Key key;
  final HeadwordEntry headwordEntry;
  final KtList<Sense> subsenses;
  final String parentSenseDefinition;
  final int headwordEntryNumber;
  SubsenseDetailsViewArguments(
      {this.key,
      @required this.headwordEntry,
      @required this.subsenses,
      @required this.parentSenseDefinition,
      @required this.headwordEntryNumber});
}
