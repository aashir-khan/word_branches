import '../../../infrastructure/core/daos/headword_entry_dao.dart';
import '../../../infrastructure/word_search/dtos/headword_entry_dto.dart';
import '../../../injection.dart';

Future<List<HeadwordEntryDto>> createDictionaryHeadwordEntries({
  Map<String, dynamic> customFieldValues = const {},
  List<String> traits = const [],
  int totalCount = 1,
}) async {
  final List<HeadwordEntryDto> headwordEntries = [];

  for (var i = 0; i < totalCount; i++) {
    headwordEntries.add(
      HeadwordEntryDto.fromFakeData(
        customFieldValues: customFieldValues,
        traits: traits,
      ),
    );
  }

  final headwordEntryDao = getIt<HeadwordEntryDao>();
  await headwordEntryDao.insertAll(headwordEntries);

  return headwordEntries;
}
