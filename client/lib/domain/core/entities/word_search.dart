import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart' hide nullable;

import '../../word_search/entities/headword_entry.dart';
import 'dictionary_word.dart';

part 'word_search.freezed.dart';

@freezed
class WordSearch with _$WordSearch {
  const factory WordSearch({
    required DictionaryWord word,
    required KtList<HeadwordEntry> results,
    @Default(false) bool isFavorited,
    DateTime? lastSearchedAt,
  }) = _WordSearch;
}
