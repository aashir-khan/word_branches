import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/word_search/entities/headword_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' show KtList;

part 'word_search.freezed.dart';

@freezed
abstract class WordSearch with _$WordSearch {
  const factory WordSearch({
    @required DictionaryWord word,
    KtList<HeadwordEntry> results,
    @nullable @Default(false) bool isFavorited,
    DateTime lastSearchedAt,
  }) = _WordSearch;
}
