import 'package:dr_words/infrastructure/word_search/dtos/lexical_entry_dto.dart';

Future<List<LexicalEntryDto>> createLexicalEntries({
  Map<String, dynamic> customFieldValues = const {},
  List<String> traits = const [],
  int totalCount = 1,
}) async {
  final List<LexicalEntryDto> lexicalEntries = [];

  for (var i = 0; i < totalCount; i++) {
    lexicalEntries.add(LexicalEntryDto.fromFakeData(
      customFieldValues: customFieldValues,
      traits: traits,
    ));
  }

  return lexicalEntries;
}
