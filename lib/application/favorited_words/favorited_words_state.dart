part of 'favorited_words_bloc.dart';

@freezed
abstract class FavoritedWordsState with _$FavoritedWordsState {
  const factory FavoritedWordsState.initial() = _Initial;
  const factory FavoritedWordsState.loadInProgress() = _LoadInProgress;
  const factory FavoritedWordsState.loadFavoritedWordsSuccess({@required KtList<DictionaryWord> words}) =
      _LoadFavoritedWordsSuccess;
  const factory FavoritedWordsState.loadFailure({@required String message}) = _FavoritedWordsStateLoadFailure;

  const factory FavoritedWordsState.actionFailure({@required String message}) = _FavoritedWordsStateActionFailure;
  const factory FavoritedWordsState.deleteSuccess() = _FavoritedWordsStateDeleteSuccess;
  const factory FavoritedWordsState.addSuccess() = _FavoritedWordsStateAddSuccess;
}
