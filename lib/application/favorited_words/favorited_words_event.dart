part of 'favorited_words_bloc.dart';

@freezed
abstract class FavoritedWordsEvent with _$FavoritedWordsEvent {
  const factory FavoritedWordsEvent.getFavoritedWords() = _GetFavoritedWords;
  const factory FavoritedWordsEvent.addFavoritedWord(DictionaryWord word) = _AddFavoritedWord;
  const factory FavoritedWordsEvent.deleteFavoritedWord(DictionaryWord word) = _DeleteFavoritedWord;
}
