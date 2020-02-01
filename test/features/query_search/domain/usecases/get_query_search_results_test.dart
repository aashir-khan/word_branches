import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_metadata.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockQuerySearchRepository extends Mock implements QuerySearchRepository {}

void main() {
  GetQuerySearchResults usecase;
  MockQuerySearchRepository mockQuerySearchRepository;

  setUp(() {
    mockQuerySearchRepository = MockQuerySearchRepository();
    usecase = GetQuerySearchResults(mockQuerySearchRepository);
  });

  final tQuery = 'test';

  final tQuerySearchMetadata = QuerySearchMetadata(
    limit: 1,
    offset: 1,
    total: 1,
  );

  final tDictionaryWord = DictionaryWord(
    id: '1',
    label: 'test',
  );

  final tQuerySearchResults = QuerySearchResults(
    metadata: tQuerySearchMetadata,
    results: [tDictionaryWord],
  );

  test('should get query search results for the query from the repository',
      () async {
    // arrange
    when(mockQuerySearchRepository.getQuerySearchResults(
      query: anyNamed('query'),
      options: anyNamed('options'),
    )).thenAnswer((_) async => Right(tQuerySearchResults));

    // act
    final result = await usecase(Params(query: tQuery));

    // assert
    expect(result, Right(tQuerySearchResults));

    verify(mockQuerySearchRepository.getQuerySearchResults(
      query: tQuery,
      options: anyNamed('options'),
    ));

    verifyNoMoreInteractions(mockQuerySearchRepository);
  });
}
