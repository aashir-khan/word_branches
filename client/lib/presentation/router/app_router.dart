import 'package:stacked/stacked_annotations.dart';
import 'package:word_branches/presentation/views/headword_entries/headword_entries_view.dart';
import 'package:word_branches/presentation/views/home/home_view.dart';
import 'package:word_branches/presentation/views/lexical_entry/lexical_entry_view.dart';
import 'package:word_branches/presentation/views/search/search_view.dart';
import 'package:word_branches/presentation/views/subsense_details/subsense_details_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: HeadwordEntriesView),
    MaterialRoute(page: LexicalEntryView),
    MaterialRoute(page: SubsenseDetailsView),
  ],
)
class AppRouter {
  /** Serves no purpose besides having an annotation attached to it */
}
