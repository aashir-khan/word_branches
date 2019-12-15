import 'package:dr_words/datamodels/query_related/query_wordlist.dart';
import 'package:dr_words/services/stoppable_service.dart';

abstract class ApiService extends StoppableService {
  final endpointPrefix = 'https://od-api.oxforddictionaries.com/api/v2';

  Future<QueryWordlist> getQueryResults(String query);
}
