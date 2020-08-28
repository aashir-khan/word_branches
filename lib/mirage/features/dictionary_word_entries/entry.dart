import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/entry_dto.dart';

Future<List<EntryDto>> createEntries({
  Map<String, dynamic> customFieldValues = const {},
  List<String> traits = const [],
  int totalCount = 1,
}) async {
  final List<EntryDto> entries = [];

  for (var i = 0; i < totalCount; i++) {
    entries.add(EntryDto.fromFakeData(
      customFieldValues: customFieldValues,
      traits: traits,
    ));
  }

  return entries;
}
