import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../domain/core/entities/word_search.dart';
import '../../../../domain/favorited_words/favorited_words_failure.dart';
import '../../../../domain/favorited_words/i_favorited_words_repository.dart';
import '../../../../domain/word_search/i_word_search_repository.dart';
import '../../../../injection.dart';
import '../../../routes/router.gr.dart';

@injectable
class FavoritedWordsViewModel extends BaseViewModel {
  final _favoritedWordsRepository = getIt<IFavoritedWordsRepository>();
  final _wordSearchRepository = getIt<IWordSearchRepository>();
  final _navigationService = getIt<NavigationService>();

  KtList<WordSearch> _favoritedSearches;
  KtList<WordSearch> get favoritedSearches => _favoritedSearches;

  Future initialise() async {
    await getFavoritedSearches();
  }

  Future getFavoritedSearches() async {
    setBusy(true);
    final resultEither = await _favoritedWordsRepository.getFavoritedSearches();
    setBusy(false);

    resultEither.fold(
      (failure) {
        setError(mapFailureToMessage(failure));
      },
      (results) {
        _favoritedSearches = results;
        notifyListeners();
      },
    );
  }

  Future<bool> deleteFavoritedSearch(WordSearch favoritedSearch) async {
    bool isDeletionSuccessful;
    final resultEither = await _favoritedWordsRepository.deleteFavoritedSearch(favoritedSearch);

    resultEither.fold(
      (failure) {
        setError(mapFailureToMessage(failure));
        isDeletionSuccessful = false;
      },
      (_) => isDeletionSuccessful = true,
    );

    return isDeletionSuccessful;
  }

  Future deleteFavoritedSearchAndRefresh(WordSearch favoritedSearch) async {
    final isDeletionSuccessful = await deleteFavoritedSearch(favoritedSearch);
    if (isDeletionSuccessful) {
      await getFavoritedSearches();
    }
  }

  Future<bool> addFavoritedSearch(WordSearch favoritedSearch) async {
    bool isAdditionSuccessful;
    final resultEither = await _favoritedWordsRepository.addFavoritedSearch(favoritedSearch);

    resultEither.fold(
      (failure) {
        setError(mapFailureToMessage(failure));
        isAdditionSuccessful = false;
      },
      (_) => isAdditionSuccessful = true,
    );

    return isAdditionSuccessful;
  }

  Future navigateToHeadwordEntriesView(WordSearch favoritedSearch) async {
    final resultEither = await _wordSearchRepository.addRecentSearch(favoritedSearch.word);

    resultEither.fold((failure) => null, (search) async {
      await _navigationService.replaceWith(
        Routes.headwordEntriesView,
        arguments: HeadwordEntriesViewArguments(word: favoritedSearch.word),
      );
    });
  }
}

String mapFailureToMessage(FavoritedWordsFailure failure) {
  return failure.when(
    localDatabaseProcessingFailure: () => 'An error occurred trying to access/store a recently searched word',
  );
}
