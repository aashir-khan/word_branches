import 'package:dartz/dartz.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_results_fake.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_query_search_results.dart';
import 'package:faker/faker.dart';
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

  final tQuery = faker.lorem.word();
  final tQuerySearchResults = QuerySearchResultsFake.fromFakeData();

  test('should get query search results for the query from the repository', () async {
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
