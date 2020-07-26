part of 'dictionary_word_entries_bloc.dart';

@freezed
abstract class DictionaryWordEntriesState with _$DictionaryWordEntriesState {
  const factory DictionaryWordEntriesState.initial() = _DictionaryWordEntriesStateInitial;
  const factory DictionaryWordEntriesState.loadInProgress() = _DictionaryWordEntriesStateLoadInProgress;
  const factory DictionaryWordEntriesState.loadEntriesSuccess({KtList<HeadwordEntry> results}) =
      _DictionaryWordEntriesStateLoadEntriesSuccess;
  const factory DictionaryWordEntriesState.loadFailure({String message}) = _DictionaryWordEntriesStateLoadFailure;
}