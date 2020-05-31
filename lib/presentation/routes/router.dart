import 'package:auto_route/auto_route_annotations.dart';
import 'package:dr_words/presentation/pages/headword_entries/headword_entries_page.dart';
import 'package:dr_words/presentation/pages/home/home_page.dart';
import 'package:dr_words/presentation/pages/search/search_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomePage homePage;
  SearchPage searchPage;
  HeadwordEntriesPage headwordEntriesPage;
}
