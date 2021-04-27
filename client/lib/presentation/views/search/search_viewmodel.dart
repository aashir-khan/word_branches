import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';
import 'package:get/get.dart';
import 'package:word_branches/presentation/routes/app_pages.dart';
import 'package:word_branches/presentation/views/headword_entries/headword_entries_view.dart';

import '../../../domain/core/entities/dictionary_word.dart';
import '../../../domain/core/entities/word_search.dart';
import '../../../domain/word_search/i_word_search_repository.dart';
import '../../../domain/word_search/word_search_local_failure.dart';
import '../../../domain/word_search/word_search_remote_failure.dart';
import '../../../injection.dart';

class SearchViewModel extends BaseViewModel {
  final _dictionaryWordSearchRepository = getIt<IWordSearchRepository>();

  String _query = '';
  String get query => _query;

  KtList<DictionaryWord>? _searchResults;
  KtList<DictionaryWord>? get searchResults => _searchResults;
  bool get hasEmptySearchResults => searchResults != null && searchResults!.isEmpty();
  bool get hasSomeSearchResults => searchResults != null && !searchResults!.isEmpty();

  KtList<WordSearch>? _recentSearches;
  KtList<WordSearch>? get recentSearches => _recentSearches;
  bool get hasEmptyRecentSearches => recentSearches != null && recentSearches!.isEmpty();
  bool get hasSomeRecentSearches => recentSearches != null && !recentSearches!.isEmpty();

  Future initialise() async {
    await getRecentSearches();
  }

  Future getDictionaryWordSearchResults(String query) async {
    if (query.isNotEmpty) {
      _query = query;
      setBusy(true);
      final resultEither = await _dictionaryWordSearchRepository.getWordSearchResults(query: query);

      resultEither.fold(
        (failure) => setError(_mapRemoteFailureToMessage(failure)),
        (results) {
          _searchResults = results;
          _recentSearches = null;
          notifyListeners();
        },
      );

      setBusy(false);
    }
  }

  Future<bool> addRecentSearch(DictionaryWord word) async {
    setBusy(true);
    final resultEither = await _dictionaryWordSearchRepository.addRecentSearch(word);
    late bool isAdditionSuccessful;

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

  Future deleteRecentSearch(WordSearch search) async {
    final resultEither = await _dictionaryWordSearchRepository.deleteRecentSearch(search);

    resultEither.fold(
      (failure) => setError(_mapLocalFailureToMessage(failure)),
      (addedWord) => getRecentSearches(),
    );
  }

  Future getRecentSearches() async {
    setBusy(true);
    final resultEither = await _dictionaryWordSearchRepository.getRecentlySearchedWords();

    resultEither.fold(
      (failure) => setError(_mapLocalFailureToMessage(failure)),
      (results) {
        _searchResults = null;
        _recentSearches = results;
        notifyListeners();
      },
    );

    setBusy(false);
  }

  Future viewSearchResultsForWord(DictionaryWord word) async {
    final isAdditionSuccessful = await addRecentSearch(word);
    if (isAdditionSuccessful) {
      await Get.toNamed(
        Routes.headwordEntriesView,
        arguments: HeadwordEntriesViewRouteArgs(word: word),
      );
    }
  }

  Future navigateToHomeView() async {
    await Get.offNamed(Routes.home);
  }

  void resetQueryText() {
    _query = '';
    notifyListeners();
  }

  Future navigateToHeadwordEntriesView(WordSearch recentSearch) async {
    await Get.toNamed(
      Routes.headwordEntriesView,
      arguments: HeadwordEntriesViewRouteArgs(word: recentSearch.word),
    );
  }
}

String _mapRemoteFailureToMessage(WordSearchRemoteFailure failure) {
  return failure.when(
    networkError: () => 'Seems like you are not connected to the Internet',
    serverError: () => 'An error occurred trying to fetch search results',
    unexpected: () => 'Unexpected error occurred while trying to get search results, please contact support',
  );
}

String _mapLocalFailureToMessage(WordSearchLocalFailure failure) {
  return failure.when(
    localDatabaseProcessingFailure: () =>
        'An error occurred trying to access/store a recently searched word on your device for retrieving',
  );
}
