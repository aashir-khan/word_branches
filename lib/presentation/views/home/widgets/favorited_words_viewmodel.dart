import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/favorited_words/favorited_words_failure.dart';
import 'package:dr_words/domain/favorited_words/i_favorited_words_repository.dart';
import 'package:dr_words/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:stacked/stacked.dart';

@injectable
class FavoritedWordsViewModel extends BaseViewModel {
  final _favoritedWordsRepository = getIt<IFavoritedWordsRepository>();

  KtList<DictionaryWord> _favoritedWords;
  KtList<DictionaryWord> get favoritedWords => _favoritedWords;

  Future initialise() async {
    await getFavoritedWords();
  }

  Future getFavoritedWords() async {
    setBusy(true);
    final resultEither = await _favoritedWordsRepository.getFavoritedWords();
    setBusy(false);

    resultEither.fold(
      (failure) {
        setError(mapFailureToMessage(failure));
      },
      (results) {
        _favoritedWords = results;
        notifyListeners();
      },
    );
  }

  Future deleteFavoritedWord(DictionaryWord word, {bool pollForNewWords = true}) async {
    final resultEither = await _favoritedWordsRepository.deleteFavoritedWord(word);

    resultEither.fold(
      (failure) => setError(mapFailureToMessage(failure)),
      (_) => pollForNewWords ? getFavoritedWords() : null,
    );
  }

  Future addFavoritedWord(DictionaryWord word, {bool pollForNewWords = true}) async {
    final resultEither = await _favoritedWordsRepository.addFavoritedWord(word);

    resultEither.fold(
      (failure) => setError(mapFailureToMessage(failure)),
      (_) => pollForNewWords ? getFavoritedWords() : null,
    );
  }
}

String mapFailureToMessage(FavoritedWordsFailure failure) {
  return failure.when(
    localDatabaseProcessingFailure: () => 'An error occurred trying to access/store a recently searched word',
  );
}
