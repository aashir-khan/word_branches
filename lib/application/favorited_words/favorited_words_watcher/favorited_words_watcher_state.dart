part of 'favorited_words_watcher_cubit.dart';

@freezed
abstract class FavoritedWordsWatcherState with _$FavoritedWordsWatcherState {
  const factory FavoritedWordsWatcherState.inital() = _Initial;
  const factory FavoritedWordsWatcherState.loadInProgress() = _LoadInProgress;
  const factory FavoritedWordsWatcherState.loadFavoritedWordsSuccess({@required KtList<DictionaryWord> words}) =
      _LoadFavoritedWordsSuccess;
  const factory FavoritedWordsWatcherState.loadFailure({@required String message}) = _FavoritedWordsStateLoadFailure;
}
