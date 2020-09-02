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
import '../views/headword_entries/headword_entries_view.dart';
import '../views/headword_entry_details/headword_entry_details_view.dart';
import '../views/home/home_view.dart';
import '../views/search/search_view.dart';
import '../views/subsense_details/subsense_details_view.dart';

class Routes {
  static const String homeView = '/';
  static const String searchView = '/search-view';
  static const String headwordEntriesView = '/headword-entries-view';
  static const String headwordEntryDetailsView = '/headword-entry-details-view';
  static const String subsenseDetailsView = '/subsense-details-view';
  static const all = <String>{
    homeView,
    searchView,
    headwordEntriesView,
    headwordEntryDetailsView,
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
    RouteDef(Routes.headwordEntryDetailsView, page: HeadwordEntryDetailsView),
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
        builder: (context) => HeadwordEntriesView(args.wordSelected),
        settings: data,
      );
    },
    HeadwordEntryDetailsView: (data) {
      final args =
          data.getArgs<HeadwordEntryDetailsViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            HeadwordEntryDetailsView(headwordEntry: args.headwordEntry),
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
  final DictionaryWord wordSelected;
  HeadwordEntriesViewArguments({@required this.wordSelected});
}

/// HeadwordEntryDetailsView arguments holder class
class HeadwordEntryDetailsViewArguments {
  final HeadwordEntry headwordEntry;
  HeadwordEntryDetailsViewArguments({@required this.headwordEntry});
}

/// SubsenseDetailsView arguments holder class
class SubsenseDetailsViewArguments {
  final Key key;
  final HeadwordEntry headwordEntry;
  final KtList<Sense> subsenses;
  final String parentSenseDefinition;
  SubsenseDetailsViewArguments(
      {this.key,
      @required this.headwordEntry,
      @required this.subsenses,
      @required this.parentSenseDefinition});
}
