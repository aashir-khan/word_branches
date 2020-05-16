import 'package:auto_route/auto_route_annotations.dart';
import 'package:dr_words/core/presentation/pages/home_page/home_page.dart';
import 'package:dr_words/features/query_search/presentation/pages/search_page.dart';
import 'package:dr_words/features/word_details/presentation/pages/headword_entries_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomePage homePage;
  SearchPage searchPage;
  HeadwordEntriesPage headwordEntriesPage;
}
