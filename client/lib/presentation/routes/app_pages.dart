import 'package:get/get.dart';
import 'package:word_branches/presentation/views/headword_entries/headword_entries_view.dart';
import 'package:word_branches/presentation/views/home/home_view.dart';
import 'package:word_branches/presentation/views/lexical_entry/lexical_entry_view.dart';
import 'package:word_branches/presentation/views/search/search_view.dart';
import 'package:word_branches/presentation/views/subsense_details/subsense_details_view.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => HomeView(),
    ),
    GetPage(
      name: Routes.searchView,
      page: () => SearchView(),
    ),
    GetPage(
      name: Routes.headwordEntriesView,
      page: () => HeadwordEntriesView(),
    ),
    GetPage(
      name: Routes.lexicalEntryView,
      page: () => LexicalEntryView(),
    ),
    GetPage(
      name: Routes.subsenseDetailsView,
      page: () => SubsenseDetailsView(),
    ),
  ];
}
