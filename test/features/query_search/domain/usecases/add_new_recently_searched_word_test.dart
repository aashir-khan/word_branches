import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/entities/dictionary_word_fake.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/add_new_recently_searched_word.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockQuerySearchRepository extends Mock implements QuerySearchRepository {}

void main() {
  AddNewRecentlySearchedWord usecase;
  MockQuerySearchRepository mockQuerySearchRepository;

  setUp(() {
    mockQuerySearchRepository = MockQuerySearchRepository();
    usecase = AddNewRecentlySearchedWord(mockQuerySearchRepository);
  });

  final tNewWordToAdd = DictionaryWordFake.fromFakeData();

  test('should return Right(true) when new recently searched word is successfully added to the repository', () async {
    // arrange
    when(mockQuerySearchRepository.addNewRecentlySearchedWord(tNewWordToAdd)).thenAnswer((_) async => Right(true));

    // act
    final result = await usecase(Params(newWordToAdd: tNewWordToAdd));

    // assert
    expect(result, Right(true));
    verify(mockQuerySearchRepository.addNewRecentlySearchedWord(tNewWordToAdd));
    verifyNoMoreInteractions(mockQuerySearchRepository);
  });
}
