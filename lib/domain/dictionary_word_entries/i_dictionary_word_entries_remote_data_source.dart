import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/headword_entry_dto.dart';
import 'package:kt_dart/collection.dart';

abstract class IDictionaryWordEntriesRemoteDataSource {
  Future<KtList<HeadwordEntryDto>> getWordEntries(DictionaryWordDto word);
}
