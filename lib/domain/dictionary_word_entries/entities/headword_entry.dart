import 'package:dr_words/domain/dictionary_word_entries/entities/lexical_entry.dart';
import 'package:dr_words/domain/dictionary_word_entries/entities/pronunciation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'headword_entry.freezed.dart';

@freezed
abstract class HeadwordEntry with _$HeadwordEntry {
  const factory HeadwordEntry({
    @required String id,
    @required KtList<LexicalEntry> lexicalEntries,
    KtList<Pronunciation> pronunciations,
  }) = _HeadwordEntry;
}
