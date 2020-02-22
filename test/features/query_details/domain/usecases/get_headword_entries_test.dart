import 'package:dartz/dartz.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/get_query_search_results.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/get_query_search_results_impl.dart';
import 'package:dr_words/features/word_details/domain/repositories/word_details_repository.dart';
import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/get_headword_entries.dart';
import 'package:dr_words/features/word_details/domain/usecases/get_headword_entries/get_headword_entries_impl.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/injection.iconfig.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  GetHeadwordEntries usecase;
  WordDetailsRepository mockWordDetailsRepository;

  setUpAll(() async {
    await configureInjection(Env.test);

    mockWordDetailsRepository = getIt<WordDetailsRepository>();
    usecase = getIt<GetHeadwordEntriesImpl>();
  });
}
