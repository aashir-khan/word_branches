// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';

import '../../domain/core/entities/dictionary_word.dart';
import '../../domain/word_search/entities/headword_entry.dart';
import '../../domain/word_search/entities/lexical_entry.dart';
import '../../domain/word_search/entities/sense.dart';
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

class StackedRouter extends RouterBase {
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
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
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
      var args = data.getArgs<HeadwordEntriesViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HeadwordEntriesView(word: args.word),
        settings: data,
      );
    },
    LexicalEntryView: (data) {
      var args = data.getArgs<LexicalEntryViewArguments>(nullOk: false);
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
      var args = data.getArgs<SubsenseDetailsViewArguments>(nullOk: false);
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
  final DictionaryWord word;
  HeadwordEntriesViewArguments({required this.word});
}

/// LexicalEntryView arguments holder class
class LexicalEntryViewArguments {
  final HeadwordEntry headwordEntry;
  final LexicalEntry lexicalEntry;
  final int headwordEntryNumber;
  LexicalEntryViewArguments(
      {required this.headwordEntry,
      required this.lexicalEntry,
      required this.headwordEntryNumber});
}

/// SubsenseDetailsView arguments holder class
class SubsenseDetailsViewArguments {
  final Key? key;
  final HeadwordEntry headwordEntry;
  final KtList<Sense> subsenses;
  final String parentSenseDefinition;
  final int headwordEntryNumber;
  SubsenseDetailsViewArguments(
      {this.key,
      required this.headwordEntry,
      required this.subsenses,
      required this.parentSenseDefinition,
      required this.headwordEntryNumber});
}
