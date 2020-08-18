// ignore_for_file: sort_unnamed_constructors_first

import 'package:dr_words/domain/dictionary_word_entries/entities/lexical_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'headword_entry.freezed.dart';

@freezed
abstract class HeadwordEntry implements _$HeadwordEntry {
  const HeadwordEntry._();

  const factory HeadwordEntry({
    @required String id,
    @required KtList<LexicalEntry> lexicalEntries,
  }) = _HeadwordEntry;

  String get audioFile {
    final firstLexicalEntry = lexicalEntries?.get(0);
    final lexicalEntryAudioFile =
        firstLexicalEntry?.pronunciations?.firstOrNull((pronunciation) => pronunciation.audioFile != null)?.audioFile;
    final entryAudioFile = firstLexicalEntry?.entries
        ?.get(0)
        ?.pronunciations
        ?.firstOrNull((pronunciation) => pronunciation.audioFile != null)
        ?.audioFile;

    if (lexicalEntryAudioFile != null) {
      return lexicalEntryAudioFile;
    } else if (entryAudioFile != null) {
      return entryAudioFile;
    }

    return null;
  }
}
