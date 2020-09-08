import 'package:dr_words/domain/dictionary_word_entries/i_dictionary_word_entries_remote_data_source.dart';
import 'package:dr_words/infrastructure/core/daos/headword_entry_dao.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/headword_entry_dto.dart';
import 'package:dr_words/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'package:kt_dart/collection.dart';

@LazySingleton(as: IDictionaryWordEntriesRemoteDataSource, env: [Env.development])
class DictionaryWordEntriesRemoteDataSourceFake implements IDictionaryWordEntriesRemoteDataSource {
  final HeadwordEntryDao headwordEntryDao;

  DictionaryWordEntriesRemoteDataSourceFake({@required this.headwordEntryDao});

  @override
  Future<KtList<HeadwordEntryDto>> getWordEntries(DictionaryWordDto word) async {
    final results = await headwordEntryDao.getEntriesForWord(word);
    return results.toImmutableList();
  }
}
