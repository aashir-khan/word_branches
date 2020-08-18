part of 'dictionary_word_entries_bloc.dart';

@freezed
abstract class DictionaryWordEntriesEvent with _$DictionaryWordEntriesEvent {
  const factory DictionaryWordEntriesEvent.getWordEntries({@required DictionaryWord word}) =
      _DictionaryWordEntriesEventGetWordEntries;
}
