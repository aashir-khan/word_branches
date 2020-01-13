import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';

import '../stoppable_service.dart';

abstract class ApiService extends StoppableService {
  final endpointPrefix = 'https://od-api.oxforddictionaries.com/api/v2';

  Future<QuerySearchResults> getQueryResults(String query,
      {Map<String, dynamic> options = const {}});
}
