import 'dart:convert';

import 'package:dr_words/infrastructure/dictionary_word_entries/dictionary_word_entries_remote_data_source_fake.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/headword_entry_dto.dart';
import 'package:dr_words/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  final sharedPreferences = getIt<SharedPreferences>();
  final initialDataStored =
      sharedPreferences.getStringList(DictionaryWordEntriesRemoteDataSourceFake.dictionaryWordEntriesDto) ?? [];
  final entriesInDatabase =
      initialDataStored.map((str) => HeadwordEntryDto.fromJson(json.decode(str) as Map<String, dynamic>)).toList();
  entriesInDatabase.addAll(headwordEntries);
  final resultEncoded = entriesInDatabase.map((entryDto) => json.encode(entryDto.toJson())).toList();
  await getIt<SharedPreferences>()
      .setStringList(DictionaryWordEntriesRemoteDataSourceFake.dictionaryWordEntriesDto, resultEncoded);

  return headwordEntries;
}
