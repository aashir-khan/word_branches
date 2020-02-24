import 'package:dartz/dartz.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/get_query_search_results.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results/get_query_search_results_impl.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/injection.iconfig.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  GetQuerySearchResults usecase;
  QuerySearchRepository mockQuerySearchRepository;

  setUpAll(() async {
    await configureInjection(Env.test);

    mockQuerySearchRepository = getIt<QuerySearchRepository>();
    usecase = getIt<GetQuerySearchResultsImpl>();
  });

  final tQuery = faker.lorem.word();
  final tQuerySearchResults = QuerySearchResults.fromFakeData();

  test('should get query search results for the query from the repository', () async {
    // arrange
    when(mockQuerySearchRepository.getQuerySearchResults(
      query: anyNamed('query'),
    )).thenAnswer((_) async => Right(tQuerySearchResults));

    // act
    final result = await usecase(Params(query: tQuery));

    // assert
    expect(result, Right(tQuerySearchResults));

    verify(mockQuerySearchRepository.getQuerySearchResults(
      query: tQuery,
    ));

    verifyNoMoreInteractions(mockQuerySearchRepository);
  });
}
