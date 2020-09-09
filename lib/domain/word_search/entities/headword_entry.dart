import 'package:dr_words/domain/word_search/entities/lexical_entry.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'headword_entry.freezed.dart';

@freezed
abstract class HeadwordEntry implements _$HeadwordEntry {
  const factory HeadwordEntry({
    @required String id,
    @required KtList<LexicalEntry> lexicalEntries,
  }) = _HeadwordEntry;

  const HeadwordEntry._();

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

  String get wordLabel => id.replaceAll(RegExp('_'), ' ');
}
