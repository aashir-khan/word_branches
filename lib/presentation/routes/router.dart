import 'package:auto_route/annotations.dart';

import '../views/headword_entries/headword_entries_view.dart';
import '../views/home/home_view.dart';
import '../views/lexical_entry/lexical_entry_view.dart';
import '../views/search/search_view.dart';
import '../views/subsense_details/subsense_details_view.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: SearchView),
    MaterialRoute(page: HeadwordEntriesView),
    MaterialRoute(page: LexicalEntryView),
    MaterialRoute(page: SubsenseDetailsView)
  ],
)
class $AppRouter {}
