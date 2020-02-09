import 'package:dartz/dartz.dart';
import 'package:dr_words/core/domain/entities/dictionary_word.dart';
import 'package:dr_words/core/domain/usecases/usecase.dart';
import 'package:dr_words/features/query_search/domain/repositories/query_search_repository.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words.dart';
import 'package:dr_words/features/query_search/domain/usecases/get_recently_searched_words_impl.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/injection.iconfig.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  GetRecentlySearchedWords usecase;
  QuerySearchRepository mockQuerySearchRepository;

  setUpAll(() async {
    await configureInjection(Env.test);
  });

  setUp(() {
    mockQuerySearchRepository = getIt<QuerySearchRepository>();
    usecase = getIt<GetRecentlySearchedWordsImpl>();
  });

  final tListOfDictionaryWord = [DictionaryWord.fromFakeData()];

  test('should get list of recently searched words from the repository', () async {
    // arrange
    when(mockQuerySearchRepository.getRecentlySearchedWords()).thenAnswer((_) async => Right(tListOfDictionaryWord));

    // act
    final result = await usecase(NoParams());

    // assert
    expect(result, Right(tListOfDictionaryWord));
    verify(mockQuerySearchRepository.getRecentlySearchedWords());
    verifyNoMoreInteractions(mockQuerySearchRepository);
  });
}
