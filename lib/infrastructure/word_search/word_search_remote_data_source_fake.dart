import 'package:dr_words/domain/word_search/i_word_search_remote_data_source.dart';
import 'package:dr_words/infrastructure/core/daos/word_search_fake_dao.dart';
import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:dr_words/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IWordSearchRemoteDataSource, env: [Env.development])
class WordSearchRemoteDataSourceFake implements IWordSearchRemoteDataSource {
  final WordSearchFakeDao wordSearchFakeDao;

  WordSearchRemoteDataSourceFake({@required this.wordSearchFakeDao});

  static const dictionaryWordDto = 'dictionary_word_dto';

  @override
  Future<KtList<WordSearchDto>> getWordSearchResults({String query}) async {
    final allResults = await wordSearchFakeDao.getSearchesForQuery(query);
    return allResults.toImmutableList();
  }
}
