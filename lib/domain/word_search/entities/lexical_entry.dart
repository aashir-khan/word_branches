import 'package:dr_words/domain/word_search/entities/id_text.dart';
import 'package:dr_words/domain/word_search/entities/entry.dart';
import 'package:dr_words/domain/word_search/entities/pronunciation.dart';
import 'package:dr_words/domain/word_search/entities/related_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'lexical_entry.freezed.dart';

enum LexicalCategoryEnum {
  adjective,
  adverb,
  combiningForm,
  conjunction,
  contraction,
  determiner,
  idomatic,
  interjection,
  noun,
  numeral,
  other,
  particle,
  predeterminer,
  prefix,
  preposition,
  pronoun,
  residual,
  suffix,
  verb,
}

@freezed
abstract class LexicalEntry with _$LexicalEntry {
  const factory LexicalEntry({
    @required KtList<Entry> entries,
    @required IdText lexicalCategory,
    KtList<Pronunciation> pronunciations,
    KtList<RelatedEntry> derivativeOf,
  }) = _LexicalEntry;
}
