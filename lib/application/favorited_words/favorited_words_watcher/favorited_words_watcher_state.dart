part of 'favorited_words_watcher_cubit.dart';

@freezed
abstract class FavoritedWordsWatcherState with _$FavoritedWordsWatcherState {
  const factory FavoritedWordsWatcherState.inital() = FavoritedWordsWatcherStateInitial;
  const factory FavoritedWordsWatcherState.loadInProgress() = FavoritedWordsWatcherStateLoadInProgress;
  const factory FavoritedWordsWatcherState.loadFavoritedWordsSuccess({@required KtList<DictionaryWord> words}) =
      FavoritedWordsWatcherStateLoadFavoritedWordsSuccess;
  const factory FavoritedWordsWatcherState.loadFailure({@required String message}) =
      FavoritedWordsWatcherStateFavoritedWordsStateLoadFailure;
}
