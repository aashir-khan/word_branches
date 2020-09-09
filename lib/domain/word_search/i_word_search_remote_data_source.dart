import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/word_search/dtos/headword_entry_dto.dart';
import 'package:kt_dart/collection.dart';

abstract class IWordSearchRemoteDataSource {
  Future<KtList<DictionaryWordDto>> getWordSearchResults({String query});
  Future<KtList<HeadwordEntryDto>> getWordEntries(DictionaryWordDto word);
}
