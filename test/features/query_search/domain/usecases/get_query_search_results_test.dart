import 'package:dartz/dartz.dart';
import 'package:dr_words/features/query_search/data/models/query_search_results_model.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/get_query_search_results.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/get_query_search_results_impl.dart';
import 'package:dr_words/injection.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  GetDictionaryWordSearchResults usecase;
  DictionaryWordSearchRepository mockDictionaryWordSearchRepository;

  setUpAll(() async {
    await configureInjection(Env.test);

    mockDictionaryWordSearchRepository = getIt<DictionaryWordSearchRepository>();
    usecase = getIt<GetDictionaryWordSearchResultsImpl>();
  });

  final tQuery = faker.lorem.word();
  final DictionaryWordSearchResults tDictionaryWordSearchResults = DictionaryWordSearchResultsModel.fromFakeData();

  test('should get query search results for the query from the repository', () async {
    // arrange
    when(mockDictionaryWordSearchRepository.getDictionaryWordSearchResults(
      query: anyNamed('query'),
    )).thenAnswer((_) async => Right(tDictionaryWordSearchResults));

    // act
    final result = await usecase(Params(query: tQuery));

    // assert
    expect(result, Right(tDictionaryWordSearchResults));

    verify(mockDictionaryWordSearchRepository.getDictionaryWordSearchResults(
      query: tQuery,
    ));

    verifyNoMoreInteractions(mockDictionaryWordSearchRepository);
  });
}
