import 'package:dr_words/infrastructure/core/daos/word_search_fake_dao.dart';
import 'package:dr_words/infrastructure/core/dtos/word_search_dto.dart';
import 'package:dr_words/injection.dart';

Future<List<WordSearchDto>> createWordSearches({
  Map<String, dynamic> customFieldValues = const {},
  int totalCount = 1,
}) async {
  final List<WordSearchDto> searchesList = [];

  for (var i = 0; i < totalCount; i++) {
    searchesList.add(WordSearchDto.fromFakeData(
      customFieldValues: customFieldValues,
    ));
  }

  final wordSearchDao = getIt<WordSearchFakeDao>();
  await wordSearchDao.insertAll(searchesList);

  return searchesList;
}
