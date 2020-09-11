import 'package:kt_dart/collection.dart';

import '../../infrastructure/core/dtos/dictionary_word_dto.dart';
import '../../infrastructure/word_search/dtos/headword_entry_dto.dart';

abstract class IWordSearchRemoteDataSource {
  Future<KtList<DictionaryWordDto>> getWordSearchResults({String query});
  Future<KtList<HeadwordEntryDto>> getWordEntries(DictionaryWordDto word);
}
