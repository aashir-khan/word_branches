// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:kt_dart/collection.dart' as _i11;

import '../../domain/core/entities/dictionary_word.dart' as _i8;
import '../../domain/word_search/entities/headword_entry.dart' as _i9;
import '../../domain/word_search/entities/lexical_entry.dart' as _i10;
import '../../domain/word_search/entities/sense.dart' as _i12;
import '../views/headword_entries/headword_entries_view.dart' as _i5;
import '../views/home/home_view.dart' as _i3;
import '../views/lexical_entry/lexical_entry_view.dart' as _i6;
import '../views/search/search_view.dart' as _i4;
import '../views/subsense_details/subsense_details_view.dart' as _i7;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.HomeView());
    },
    SearchViewRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.SearchView());
    },
    HeadwordEntriesViewRoute.name: (routeData) {
      final args = routeData.argsAs<HeadwordEntriesViewRouteArgs>(
          orElse: () => const HeadwordEntriesViewRouteArgs());
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.HeadwordEntriesView(word: args.word));
    },
    LexicalEntryViewRoute.name: (routeData) {
      final args = routeData.argsAs<LexicalEntryViewRouteArgs>(
          orElse: () => const LexicalEntryViewRouteArgs());
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.LexicalEntryView(
              headwordEntry: args.headwordEntry,
              lexicalEntry: args.lexicalEntry,
              headwordEntryNumber: args.headwordEntryNumber));
    },
    SubsenseDetailsViewRoute.name: (routeData) {
      final args = routeData.argsAs<SubsenseDetailsViewRouteArgs>(
          orElse: () => const SubsenseDetailsViewRouteArgs());
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.SubsenseDetailsView(
              key: args.key,
              headwordEntry: args.headwordEntry,
              subsenses: args.subsenses,
              parentSenseDefinition: args.parentSenseDefinition,
              headwordEntryNumber: args.headwordEntryNumber));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeViewRoute.name, path: '/'),
        _i1.RouteConfig(SearchViewRoute.name, path: '/search-view'),
        _i1.RouteConfig(HeadwordEntriesViewRoute.name,
            path: '/headword-entries-view'),
        _i1.RouteConfig(LexicalEntryViewRoute.name,
            path: '/lexical-entry-view'),
        _i1.RouteConfig(SubsenseDetailsViewRoute.name,
            path: '/subsense-details-view')
      ];
}

class HomeViewRoute extends _i1.PageRouteInfo {
  const HomeViewRoute() : super(name, path: '/');

  static const String name = 'HomeViewRoute';
}

class SearchViewRoute extends _i1.PageRouteInfo {
  const SearchViewRoute() : super(name, path: '/search-view');

  static const String name = 'SearchViewRoute';
}

class HeadwordEntriesViewRoute
    extends _i1.PageRouteInfo<HeadwordEntriesViewRouteArgs> {
  HeadwordEntriesViewRoute({_i8.DictionaryWord word})
      : super(name,
            path: '/headword-entries-view',
            args: HeadwordEntriesViewRouteArgs(word: word));

  static const String name = 'HeadwordEntriesViewRoute';
}

class HeadwordEntriesViewRouteArgs {
  const HeadwordEntriesViewRouteArgs({this.word});

  final _i8.DictionaryWord word;
}

class LexicalEntryViewRoute
    extends _i1.PageRouteInfo<LexicalEntryViewRouteArgs> {
  LexicalEntryViewRoute(
      {_i9.HeadwordEntry headwordEntry,
      _i10.LexicalEntry lexicalEntry,
      int headwordEntryNumber})
      : super(name,
            path: '/lexical-entry-view',
            args: LexicalEntryViewRouteArgs(
                headwordEntry: headwordEntry,
                lexicalEntry: lexicalEntry,
                headwordEntryNumber: headwordEntryNumber));

  static const String name = 'LexicalEntryViewRoute';
}

class LexicalEntryViewRouteArgs {
  const LexicalEntryViewRouteArgs(
      {this.headwordEntry, this.lexicalEntry, this.headwordEntryNumber});

  final _i9.HeadwordEntry headwordEntry;

  final _i10.LexicalEntry lexicalEntry;

  final int headwordEntryNumber;
}

class SubsenseDetailsViewRoute
    extends _i1.PageRouteInfo<SubsenseDetailsViewRouteArgs> {
  SubsenseDetailsViewRoute(
      {_i2.Key key,
      _i9.HeadwordEntry headwordEntry,
      _i11.KtList<_i12.Sense> subsenses,
      String parentSenseDefinition,
      int headwordEntryNumber})
      : super(name,
            path: '/subsense-details-view',
            args: SubsenseDetailsViewRouteArgs(
                key: key,
                headwordEntry: headwordEntry,
                subsenses: subsenses,
                parentSenseDefinition: parentSenseDefinition,
                headwordEntryNumber: headwordEntryNumber));

  static const String name = 'SubsenseDetailsViewRoute';
}

class SubsenseDetailsViewRouteArgs {
  const SubsenseDetailsViewRouteArgs(
      {this.key,
      this.headwordEntry,
      this.subsenses,
      this.parentSenseDefinition,
      this.headwordEntryNumber});

  final _i2.Key key;

  final _i9.HeadwordEntry headwordEntry;

  final _i11.KtList<_i12.Sense> subsenses;

  final String parentSenseDefinition;

  final int headwordEntryNumber;
}
