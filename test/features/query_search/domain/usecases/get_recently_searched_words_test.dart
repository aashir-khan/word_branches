import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/features/query_search/domain/entities/query_search/query_search_single_result.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockQuerySearchRepository extends Mock implements QuerySearchRepository {}

void main() {
  GetRecentlySearchedWords usecase;
  MockQuerySearchRepository mockQuerySearchRepository;

  setUp(() {
    mockQuerySearchRepository = MockQuerySearchRepository();
    usecase = GetRecentlySearchedWords(mockQuerySearchRepository);
  });

  final tListOfQuerySearchSingleResult = [
    QuerySearchSingleResult(id: 'test', label: 'test')
  ];

  test('should get list of recently searched words from the repository',
      () async {
    // arrange
    when(mockQuerySearchRepository.getRecentlySearchedWords())
        .thenAnswer((_) async => Right(tListOfQuerySearchSingleResult));

    // act
    final result = await usecase(NoParams());

    // assert
    expect(result, Right(tListOfQuerySearchSingleResult));
    verify(mockQuerySearchRepository.getRecentlySearchedWords());
    verifyNoMoreInteractions(mockQuerySearchRepository);
  });
}