import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/word_search/i_word_search_remote_data_source.dart';
import '../core/daos/dictionary_word_dao.dart';
import '../core/daos/headword_entry_dao.dart';
import '../core/dtos/dictionary_word_dto.dart';
import 'dtos/headword_entry_dto.dart';

@LazySingleton(as: IWordSearchRemoteDataSource, env: [Environment.test])
class WordSearchRemoteDataSourceFake implements IWordSearchRemoteDataSource {
  final DictionaryWordDao dictionaryWordDao;
  final HeadwordEntryDao headwordEntryDao;

  WordSearchRemoteDataSourceFake({
    required this.dictionaryWordDao,
    required this.headwordEntryDao,
  });

  @override
  Future<KtList<DictionaryWordDto>> getWordSearchResults({required String query}) async {
    final allResults = await dictionaryWordDao.getSearchesForQuery(query);
    return allResults.toImmutableList();
  }

  @override
  Future<KtList<HeadwordEntryDto>> getWordEntries(DictionaryWordDto word) async {
    final allResults = await headwordEntryDao.getEntriesForWord(word);
    return allResults.toImmutableList();
  }
}
