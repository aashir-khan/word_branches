import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_local_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/dictionary_word_search_remote_failure.dart';
import 'package:dr_words/domain/dictionary_word_search/i_dictionary_word_search_repository.dart';
import 'package:dr_words/injection.dart';
import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';

class SearchViewModel extends BaseViewModel {
  final _dictionaryWordSearchRepository = getIt<IDictionaryWordSearchRepository>();

  String _query = '';
  String get query => _query;

  KtList<DictionaryWord> _searchResults;
  KtList<DictionaryWord> get searchResults => _searchResults;
  bool get hasEmptySearchResults => searchResults != null && searchResults.isEmpty();
  bool get hasSomeSearchResults => searchResults != null && !searchResults.isEmpty();

  KtList<DictionaryWord> _recentlySearchedWords;
  KtList<DictionaryWord> get recentlySearchedWords => _recentlySearchedWords;
  bool get hasEmptyRecentlySearchedWords => recentlySearchedWords != null && recentlySearchedWords.isEmpty();
  bool get hasSomeRecentlySearchedWords => recentlySearchedWords != null && !recentlySearchedWords.isEmpty();

  Future initialise() async {
    await getRecentlySearchedWords();
  }

  Future getDictionaryWordSearchResults(String query) async {
    if (query.isNotEmpty) {
      _query = query;
      setBusy(true);
      final resultEither = await _dictionaryWordSearchRepository.getDictionaryWordSearchResults(query: query);

      resultEither.fold(
        (failure) => setError(_mapRemoteFailureToMessage(failure)),
        (results) {
          _searchResults = results;
          _recentlySearchedWords = null;
          notifyListeners();
        },
      );

      setBusy(false);
    }
  }

  Future<bool> addNewRecentlySearchedWord(DictionaryWord word) async {
    setBusy(true);
    final resultEither = await _dictionaryWordSearchRepository.addNewRecentlySearchedWord(word);
    bool isAdditionSuccessful;

    resultEither.fold(
      (failure) {
        setError(_mapLocalFailureToMessage(failure));
        isAdditionSuccessful = false;
      },
      (addedWord) => isAdditionSuccessful = true,
    );

    setBusy(false);
    return isAdditionSuccessful;
  }

  Future deleteRecentlySearchedWord(DictionaryWord word) async {
    final resultEither = await _dictionaryWordSearchRepository.deleteRecentlySearchedWord(word);

    resultEither.fold(
      (failure) => setError(_mapLocalFailureToMessage(failure)),
      (addedWord) => getRecentlySearchedWords(),
    );
  }

  Future getRecentlySearchedWords() async {
    setBusy(true);
    final resultEither = await _dictionaryWordSearchRepository.getRecentlySearchedWords();

    resultEither.fold(
      (failure) => setError(_mapLocalFailureToMessage(failure)),
      (results) {
        _searchResults = null;
        _recentlySearchedWords = results;
        notifyListeners();
      },
    );

    setBusy(false);
  }

  void resetQueryText() {
    _query = '';
    notifyListeners();
  }
}

String _mapRemoteFailureToMessage(DictionaryWordSearchRemoteFailure failure) {
  return failure.when(
    networkError: () => 'Seems like you are not connected to the Internet',
    serverError: () => 'An error occurred trying to fetch search results',
    unexpected: () => 'Unexpected error occurred while trying to get search results, please contact support',
  );
}

String _mapLocalFailureToMessage(DictionaryWordSearchLocalFailure failure) {
  return failure.when(
    localDatabaseProcessingFailure: () =>
        'An error occurred trying to access/store a recently searched word on your device for retrieving',
  );
}
