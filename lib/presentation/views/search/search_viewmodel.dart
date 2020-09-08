import 'package:dr_words/domain/core/entities/word_search.dart';
import 'package:dr_words/domain/word_search/i_word_search_repository.dart';
import 'package:dr_words/domain/word_search/word_search_local_failure.dart';
import 'package:dr_words/domain/word_search/word_search_remote_failure.dart';
import 'package:dr_words/injection.dart';
import 'package:dr_words/presentation/routes/router.gr.dart';
import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SearchViewModel extends BaseViewModel {
  final _dictionaryWordSearchRepository = getIt<IWordSearchRepository>();
  final _navigationService = getIt<NavigationService>();

  String _query = '';
  String get query => _query;

  KtList<WordSearch> _searchResults;
  KtList<WordSearch> get searchResults => _searchResults;
  bool get hasEmptySearchResults => searchResults != null && searchResults.isEmpty();
  bool get hasSomeSearchResults => searchResults != null && !searchResults.isEmpty();

  KtList<WordSearch> _recentSearches;
  KtList<WordSearch> get recentSearches => _recentSearches;
  bool get hasEmptyRecentSearches => recentSearches != null && recentSearches.isEmpty();
  bool get hasSomeRecentSearches => recentSearches != null && !recentSearches.isEmpty();

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

  Future<bool> addRecentSearch(WordSearch search) async {
    setBusy(true);
    final resultEither = await _dictionaryWordSearchRepository.addRecentSearch(search);
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

  Future viewSearchResultsForSearch(WordSearch search) async {
    final isAdditionSuccessful = await addRecentSearch(search);
    if (isAdditionSuccessful) {
      await _navigationService.replaceWith(Routes.headwordEntriesView,
          arguments: HeadwordEntriesViewArguments(wordSearch: search));
    }
  }

  Future navigateToHomeView() async {
    await _navigationService.replaceWith(Routes.homeView);
  }

  void resetQueryText() {
    _query = '';
    notifyListeners();
  }

  Future navigateToHeadwordEntriesView(WordSearch recentSearch) async {
    await _navigationService.navigateTo(Routes.headwordEntriesView,
        arguments: HeadwordEntriesViewArguments(wordSearch: recentSearch));
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
