import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_search.freezed.dart';

@freezed
abstract class WordSearch with _$WordSearch {
  const factory WordSearch({
    @required DictionaryWord word,
    @nullable @Default(false) bool isFavorited,
    DateTime lastSearchedAt,
  }) = _WordSearch;
}
