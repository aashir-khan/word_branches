import 'package:dr_words/datamodels/query_related/query_search_results.dart';
import 'package:dr_words/services/stoppable_service.dart';

abstract class ApiService extends StoppableService {
  final endpointPrefix = 'https://od-api.oxforddictionaries.com/api/v2';

  Future<QuerySearchResults> getQueryResults(String query,
      {Map<String, dynamic> options = const {}});
}
