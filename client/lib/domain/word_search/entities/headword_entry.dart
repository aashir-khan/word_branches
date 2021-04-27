import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'lexical_entry.dart';

part 'headword_entry.freezed.dart';

@freezed
class HeadwordEntry with _$HeadwordEntry {
  const factory HeadwordEntry({
    required String id,
    required KtList<LexicalEntry> lexicalEntries,
  }) = _HeadwordEntry;

  const HeadwordEntry._();

  String? get audioFile {
    final firstLexicalEntry = lexicalEntries.get(0);
    final lexicalEntryAudioFile =
        firstLexicalEntry.pronunciations?.firstOrNull((pronunciation) => pronunciation.audioFile != null)?.audioFile;
    final entryAudioFile = firstLexicalEntry.entries
        .get(0)
        .pronunciations
        ?.firstOrNull((pronunciation) => pronunciation.audioFile != null)
        ?.audioFile;

    if (lexicalEntryAudioFile != null) {
      return lexicalEntryAudioFile;
    } else if (entryAudioFile != null) {
      return entryAudioFile;
    }
  }

  String get wordLabel => id.replaceAll(RegExp('_'), ' ');
}
