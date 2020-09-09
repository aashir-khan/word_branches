import 'package:dr_words/domain/word_search/i_word_search_remote_data_source.dart';
import 'package:dr_words/infrastructure/core/daos/dictionary_word_dao.dart';
import 'package:dr_words/infrastructure/core/daos/headword_entry_dao.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/word_search/dtos/headword_entry_dto.dart';
import 'package:dr_words/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IWordSearchRemoteDataSource, env: [Env.development])
class WordSearchRemoteDataSourceFake implements IWordSearchRemoteDataSource {
  final DictionaryWordDao dictionaryWordDao;
  final HeadwordEntryDao headwordEntryDao;

  WordSearchRemoteDataSourceFake({
    @required this.dictionaryWordDao,
    @required this.headwordEntryDao,
  });

  @override
  Future<KtList<DictionaryWordDto>> getWordSearchResults({String query}) async {
    final allResults = await dictionaryWordDao.getSearchesForQuery(query);
    return allResults.toImmutableList();
  }

  @override
  Future<KtList<HeadwordEntryDto>> getWordEntries(DictionaryWordDto word) async {
    final allResults = await headwordEntryDao.getEntriesForWord(word);
    return allResults.toImmutableList();
  }
}
