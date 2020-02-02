import 'package:dr_words/core/services/stoppable_service.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model_fake.dart';
import 'package:hive/hive.dart';

class FakeDatabaseService extends StoppableService {
  @override
  Future<void> stop() async {
    await Hive.deleteBoxFromDisk(QuerySearchResultsModelFake.DB_IDENTIFIER);
    await Hive.close();
    await super.stop();
  }
}
