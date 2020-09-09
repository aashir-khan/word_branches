import 'package:dr_words/infrastructure/core/daos/dictionary_word_dao.dart';
import 'package:dr_words/infrastructure/core/dtos/dictionary_word_dto.dart';
import 'package:dr_words/injection.dart';

Future<List<DictionaryWordDto>> createDictionaryWords({
  Map<String, dynamic> customFieldValues = const {},
  int totalCount = 1,
}) async {
  final List<DictionaryWordDto> searchesList = [];

  for (var i = 0; i < totalCount; i++) {
    searchesList.add(DictionaryWordDto.fromFakeData(
      customFieldValues: customFieldValues,
    ));
  }

  final dictionaryWordDao = getIt<DictionaryWordDao>();
  await dictionaryWordDao.insertAll(searchesList);

  return searchesList;
}
