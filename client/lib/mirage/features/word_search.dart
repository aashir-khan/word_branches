import '../../infrastructure/core/daos/dictionary_word_dao.dart';
import '../../infrastructure/core/dtos/dictionary_word_dto.dart';
import '../../injection.dart';

Future<List<DictionaryWordDto>> createAndPersistDictionaryWords({
  int totalCount = 1,
}) async {
  final searchesList = DictionaryWordDtoFixture.factory().makeMany(totalCount);

  final dictionaryWordDao = getIt<DictionaryWordDao>();
  await dictionaryWordDao.insertAll(searchesList);

  return searchesList;
}
